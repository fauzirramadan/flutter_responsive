import 'package:flutter/material.dart';

const paddingTile = EdgeInsets.only(left: 8.0, right: 8, top: 8);
var appBarColor = Colors.grey[900];
var defaultBackgroundColor = Colors.grey[300];

var myAppBar = AppBar(backgroundColor: appBarColor);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      DrawerHeader(
        child: CircleAvatar(
            backgroundColor: Colors.grey[600],
            child: const Icon(Icons.favorite)),
      ),
      Padding(
        padding: paddingTile,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: Colors.white.withOpacity(0.8),
          elevation: 0,
          child: const ListTile(
            leading: Icon(Icons.home),
            title: Text("DASHBOARD"),
          ),
        ),
      ),
      Padding(
        padding: paddingTile,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: Colors.white.withOpacity(0.8),
          elevation: 0,
          child: const ListTile(
            leading: Icon(Icons.settings),
            title: Text("SETTINGS"),
          ),
        ),
      ),
      Padding(
        padding: paddingTile,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: Colors.white.withOpacity(0.8),
          elevation: 0,
          child: const ListTile(
            leading: Icon(Icons.notes),
            title: Text("ABOUT"),
          ),
        ),
      ),
      Padding(
        padding: paddingTile,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: Colors.white.withOpacity(0.8),
          elevation: 0,
          child: const ListTile(
            leading: Icon(Icons.logout),
            title: Text("LOG OUT"),
          ),
        ),
      )
    ],
  ),
);
