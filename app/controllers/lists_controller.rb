class ListsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数にからのModelオブジェを生成する。
    @list = List.new
  end

 def create
  # 投稿データを受け取り新規登録するためのインスタンス作成
  list = List.new(list_params)
  # データベースに保存するためのメソッド実行
  list.save
  # top画面にリダイレクト
  redirect_to list_path(list.id)
 end




  def index
    @lists = List.all
    
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
  
 private
# ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
 end
 
 
 