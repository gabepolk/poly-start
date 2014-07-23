class AddCommentPolymorphicAssociations < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.remove :video_id
      t.references :user, index: true
      t.column :commentable_id, :integer
      t.column :commentable_type, :string
    end
  end
end
