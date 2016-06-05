class Compromisso < ActiveRecord::Base
	belongs_to :fotografo # compromisso tendra fotografo_id
	belongs_to :servicio 

	 # busqueda por texto

	 def self.search(search)

		 if search 
		 	
		 	
		   Compromisso.joins(:fotografo).where('nombre_pila LIKE ?', "%#{search}%")

		 

		 end

	end
end
