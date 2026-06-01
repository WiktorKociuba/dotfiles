from fabric.widgets.wayland import Window
from fabric.widgets.label import Label
from fabric import Application

bar = Window(
	    child=Label(label="mrrp:3"),
	    anchor="top left right",
		layer="top",
        margins="4px 10px 0px",
	    exclusive=True)
if __name__ == "__main__":
	app = Application("my-fabric-bar",bar)
	app.run()
