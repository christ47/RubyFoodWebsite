require 'sinatra'
require 'sinatra/contrib'
require 'color_text'
require 'sinatra/reloader' if development?
require_relative 'controller/homework_controller.rb'
use Rack::Reloader
run HomeworkController
