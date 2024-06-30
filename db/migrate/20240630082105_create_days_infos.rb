class CreateDaysInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :days_infos do |t|
      t.string :date
      t.string :main_keyword
      t.text :quiz_question
      t.string :quiz_answer
      t.text :description
      t.string :sub_keyword
      t.text :activity

      t.timestamps
    end
  end
end
