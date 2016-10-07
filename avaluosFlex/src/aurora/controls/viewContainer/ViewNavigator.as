package aurora.controls.viewContainer{
	import mx.containers.TabNavigator;
	import aurora.controls.viewContainer.ViewBar;
	/**
	 * Componente ViewNavigator.as
	 * Parte del componete personalizado para crear pestañas en flex
	 * que permiten ser cerradas e intercambiadas
	 * https://github.com/arpit/TabManager
	 * @see mx.containers.TabNavigator
	 **/
	public class ViewNavigator extends TabNavigator{
		
		/*
		Use the ViewBar instance as the tabBar as the tabBar.
		Since ViewBar extends TabBar, the cooercion succeeds
		*/
		override protected function createChildren():void{
	        if (!tabBar){
				tabBar = new ViewBar();
				tabBar.name = "tabBar";
				tabBar.focusEnabled = false;
				tabBar.styleName = this;
	
				tabBar.setStyle("borderStyle", "none");
				tabBar.setStyle("paddingTop", 0);
				tabBar.setStyle("paddingBottom", 0);
				
				rawChildren.addChild(tabBar);
				
			}
			super.createChildren();
		}
	}
}