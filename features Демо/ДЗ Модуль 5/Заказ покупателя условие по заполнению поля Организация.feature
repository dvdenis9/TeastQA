﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заказ покупателя. Условие по заполнению поля Организация
И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
И я нажимаю на кнопку с именем 'FormCreate'
И я нажимаю кнопку выбора у поля с именем "Partner"
Тогда открылось окно 'Партнеры'
И в таблице "List" я перехожу к строке:
	| 'Наименование'       |
	| 'Розничный клиент 1' |
И в таблице "List" я выбираю текущую строку
Если поле с именем "Company" заполнено Тогда
	И я нажимаю на кнопку с именем 'FormPostAndClose'
	И я жду закрытия окна 'Заказ покупателя (создание) *' в течение 20 секунд
Если поле с именем "Company" не заполнено Тогда
	и я нажимаю кнопку выбора у поля с именем "Company"
	Тогда открылось окно 'Организации'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'           |
			| '1'   | 'Собственная компания 1' |
		И в таблице "List" я выбираю текущую строку
		Тогда открылось окно 'Заказ покупателя (создание) *'
		И я нажимаю на кнопку с именем 'FormPostAndClose'
		И я жду закрытия окна 'Заказ покупателя (создание) *' в течение 20 секунд









