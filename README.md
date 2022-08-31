# Navigation

A new Flutter project. To use all ways to navigate between screens

## PopupMenuButton Usage:
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
