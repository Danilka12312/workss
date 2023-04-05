ActiveAdmin.register NewReponse do
  menu label: "Заявки"

  permit_params :name, :phone, :vk, :name_work

  action_item :publish, only: :show do 
    link_to "Опубликовать", publish_admin_new_reponse_path(new_reponse), method: :put if !new_reponse.name_work
  end

  action_item :publish, only: :show do
    link_to "Сделано", unpublish_admin_new_reponse_path(new_reponse), method: :put if new_reponse.name_work
  end

  member_action :publish, method: :put do
    new_reponse = NewReponse.find(params[:id])
    new_reponse.update(name_work: 1)
    redirect_to admin_new_reponse_path(new_reponse)
  end

  member_action :unpublish, method: :put do
    new_reponse = NewReponse.find(params[:id])
    new_reponse.update(name_work: "Сделано")
    redirect_to admin_new_reponse_path(new_reponse)
  end

end