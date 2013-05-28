# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130528024643) do

  create_table "incoming_mails", :force => true do |t|
    t.string   "sender"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "short_message"
    t.string   "forwarder"
    t.integer  "user_id"
  end

  create_table "recipient_lists", :force => true do |t|
    t.string   "name"
    t.string   "mail_sender"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "recipients", :force => true do |t|
    t.string   "number"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "recipient_list_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
