class ListsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数にからのModelオブジェを生成する。
    @list = List.new
  end
end
def create
  # 投稿データを受け取り新規登録するためのインスタンス作成
  list = List.new(list_params)
  # データベースに保存するためのメソッド実行
  list.save
  # top画面にリダイレクト
  redirect_to '/top'
end




  def index
    
  end

  def show
  end

  def edit
  end

 private
# ストロングパラメータ
 def list_params
  params.require(:list).permit(:title, :body)
 end