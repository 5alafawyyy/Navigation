# Navigation

A new Flutter project. To use all ways to navigate between screens

## PopupMenuButton: 
    Is used on action at AppBar
PopupMenuButton(
    */ Choose between icon Or child. But not both together!/*
    // icon: Icon(Icons.'AnyIcon'),
    child: Text('Any Text'),

    itemBuilder: (BuildContext context) => [
        PopupMenuItem(
            value: 1,
            child: Text('First),
        ),
    ],
    onSelected: (v) => doSomething(context, v),
),

## Drawer:
    Is a flexible way to add navigation to the Application
* Requires a Scaffold
* Add items with child. NOTE: it has a child not a children
* Use ListView or Column as a child
* Use DrawerHeader when appropriate 