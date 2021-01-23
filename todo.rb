
class ToDo
  # コードを追加
  def initialize
    @task = []
  end

  def add(task)
    @task << task
    puts "【追加】#{task.info}"
  end

  def info
    if @tasks.empty?
        puts "【!】タスクはありません"
    else
        puts"*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
        @tasks.each do |task|
          puts task.info
        end
        puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
    end
  end

  def delete (id:)
    task = @tasks.find{ |task| task.id == id }
    if task.nil?
      puts "【！】 該当idのタスクはありません。"
    else
      @tasks.delete(task)
      puts "【削除】#{task.info}"
    end
  end
end

