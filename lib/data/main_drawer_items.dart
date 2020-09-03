import 'package:flutter/material.dart';

class MainDrawerItems{
  final IconData itemsIcon;
  final String itemsTitle;

  MainDrawerItems({this.itemsIcon, this.itemsTitle});
}

List<MainDrawerItems> itemsList = [
  MainDrawerItems(itemsIcon: Icons.home, itemsTitle: 'Склад'),
  MainDrawerItems(itemsIcon: Icons.store, itemsTitle: 'Магазины'),
  MainDrawerItems(itemsIcon: Icons.payment, itemsTitle: 'Виды расходов'),
  MainDrawerItems(itemsIcon: Icons.extension, itemsTitle: 'Товар'),
  MainDrawerItems(itemsIcon: Icons.business, itemsTitle: 'Компании'),
  MainDrawerItems(itemsIcon: Icons.dialpad, itemsTitle: 'Оператор'),
  MainDrawerItems(itemsIcon: Icons.category, itemsTitle: 'Категория'),
  MainDrawerItems(itemsIcon: Icons.account_balance, itemsTitle: 'Кассы'),
  MainDrawerItems(itemsIcon: Icons.supervisor_account, itemsTitle: 'Пользователи'),
  MainDrawerItems(itemsIcon: Icons.face, itemsTitle: 'Клиенты'),
  MainDrawerItems(itemsIcon: Icons.monetization_on, itemsTitle: 'Валюта'),
];