class Observable
  attr_accessor :observers, :changed

  def initialize
    @observers = []
    @changed = false
  end

  def add_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    if @changed
      @observers.each do |observer|
        observer.update
      end
      @changed = false
    end
  end
end