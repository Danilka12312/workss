ActiveAdmin.register Work do
  menu priority: 6
  menu label: "Вакансий"
  permit_params :name, :img, :link, :contact, :qr, :description, :mini_desc, :salary, :city
  
  action_item :publish, only: :show do 
    link_to "Опубликовать", publish_admin_work_path(work), method: :put if !work.city
  end

  action_item :publish, only: :show do
    link_to "Скрыть", unpublish_admin_work_path(work), method: :put if work.city
  end

  member_action :publish, method: :put do
    work = Work.find(params[:id])
    work.update(city: 1)
    redirect_to admin_work_path(work)
  end

  member_action :unpublish, method: :put do
    work = Work.find(params[:id])
    work.update(city: nil)
    redirect_to admin_work_path(work)
  end
end
