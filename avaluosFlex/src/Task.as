package
{
	[Bindable]
	public class Task
	{
		public function Task(title:String, priority:int, due:String)
		{
			this.title = title;
			this.priority = priority;
			this.due = due;
		}
		
		public var title:String;
		public var priority:int;
		public var due:String;
	}
}