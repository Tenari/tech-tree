class Tool < ActiveRecord::Base
  belongs_to :generic_tool
  has_and_belongs_to_many :prereqs, class_name: "Tool", join_table: "tools_tools", foreign_key: "tool_id", association_foreign_key: "prereq_id"
  has_and_belongs_to_many :materials
end
