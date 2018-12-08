class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :content
      t.timestamps
    end
  end
end

# マイグレーションファイルとは
# DBの設計書

# dbを前のバージョンに戻すコマンド
# rails db:rollback
# マイグレーションファイルにnull: falseをつける
# マイグレーションファイルを反映(もしくは実行するコマンド)
# rails db:migrate
