; Текущая версия скрипта
CurrentVersion := "1.0.0"

SetTimer, CheckForUpdate, 60000 ; Проверять раз в минуту

CheckForUpdate:
URLDownloadToFile, https://raw.githubusercontent.com/Solntsevskaya/update.txt/main/update.txt, update.txt
if ErrorLevel
    return

FileRead, updateText, update.txt
FileReadLine, latestVersion, update.txt, 1

if (latestVersion > CurrentVersion)
{
    FileReadLine, updateInfo, update.txt, 3
    MsgBox, Доступно обновление скрипта!`nТекущая версия: %CurrentVersion%`nНовая версия: %latestVersion%`n`nПричина: %updateInfo%`n`nНажать F6 для обновления или F4 для продолжения работы.
}
else
{
    FileDelete, update.txt
    return
}
return

F6::
URLDownloadToFile, https://raw.githubusercontent.com/ваш_аккаунт/репозиторий/main/ваш_скрипт.ahk, %A_ScriptFullPath%
if ErrorLevel
{
    MsgBox, Ошибка при обновлении.
    return
}
MsgBox, Обновление успешно установлено. Перезапустите скрипт.
ExitApp
return

F4::
FileDelete, update.txt
MsgBox, Работаете со старой версией скрипта.
return

Gui, Add, Button, x22 y9 w210 h40 gOrg1 , Prov Drive
Gui, Add, Button, x22 y59 w210 h40 gOrg2 , ProffDrive
Gui, Add, Button, x22 y109 w210 h40 gOrg3 , Cool GO
Gui, Add, Button, x22 y159 w210 h40 gOrg4 , HamsterCars
Gui, Add, Button, x22 y209 w210 h40 gOrg5 , ООО "Эрмитаж"
Gui, Add, Button, x22 y259 w210 h40 gOrg6 , ООО «ПАП» и ООО «Нева»
Gui, Add, Button, x22 y359 w210 h40 gOrg8 , Freeway Inc. Cinema
Gui, Add, Button, x262 y9 w210 h40 gOrg9 , ProffEvent
Gui, Add, Button, x262 y59 w210 h40 gOrg10 , Media Star
Gui, Add, Button, x262 y109 w210 h40 gOrg11 , Eclipse AutoClub
Gui, Add, Button, x262 y159 w210 h40 gOrg12 , Prov Auction
Gui, Add, Button, x262 y209 w210 h40 gOrg13 , Prov Detailing
Gui, Add, Button, x262 y259 w210 h40 gOrg14 , Kayo Prod
Gui, Add, Button, x262 y309 w210 h40 gOrg15 , Prov Design
Gui, Add, Button, x262 y359 w210 h40 gOrg16 , Effect studio
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s9 w600 cBlack, Segoe UI
Gui Add, Edit, x512 y59 w192 h255 -VScroll +Center
Gui Font
Gui Font, s9, Segoe UI
; Generated using SmartGUI Creator for SciTE
Gui, Show, w740 h413, Реклама ЧО
return


GuiClose:
ExitApp

!1::
FileDelete, %A_Scriptdir%\Реклама.txt
return

Org1:
FileAppend,
(
[Prov Drive]
p Компания Prov объявляет глобальный набор арендодателей к себе в команду!
p Предлагайте свои эксклюзивные автомобили в аренду и получайте стабильный доход!
p Более подробная информация: vk.cc/cJCkSJ (F8 -> Ctrl C -> Ctrl V)
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org2:
FileAppend,
(
[ProffDrive]
p Если у Вас нет средств на покупку авто, обновленная система аренды от «ProffDrive» к вашим услугам!
p Мы снизили цены и упростили требования, чтобы аренда авто стала еще доступнее и удобнее для вас!
p Есть автомобиль и хотите заработать? Присоединяйтесь к нам, это легко и удобно для каждого!
p Подробности в нашей группе ВКонтакте: vk.com/proff.drive (F8 - Ctrl C => Ctrl V)!
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org3:
FileAppend,
(
[Cool GO]
p Хотели всегда работать в частном таксопарке и перевозить людей?
p Тогда вам в Cool Go! Ведь это отличная возможность заработка!
p Заинтересовало? Тогда обращайтесь по ссылке: vk.com/coolgos [F8 - ctrl+c - ctrl+v]
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org4:
FileAppend,
(
[HamsterCars]
p HamsterCars — это быстрый, удобный и качественный сервис по аренде автомобилей разного класса.
p Большой ассортимент, быстрая подача, а главное - дешёвые тарифы на аренду любого доступного транспорта!
p Мы предоставляем широкий выбор транспорта для ваших нужд, заказывайте уже сейчас - https://vk.com/hamstercars
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org5:
FileAppend,
(
[ООО "Эрмитаж"]
p ООО "Эрмитаж" приглашает в СС: начальника учебной части и 3 инструкторов!
p Требования: уровень 3+, отсутствие блокировок, знание УЧО и устава, грамотность и адекватность.
p Подать заявку можно на форуме: clck.ru/3GMtsC. Присоединяйтесь к команде!
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org6:
FileAppend,
(
[ПАП и Нева]
p Уважаемые игроки, минуточку внимания!
p В ООО «ПАП» и ООО «Нева» требуются водители категории D как с личным автобусом, так и без него.
p Перейти в отдел кадров и ознакомиться с требованиями для трудоустройства можно по ссылкам:
p ПАП — https://clck.ru/3AFVgE, Нева — https://clck.ru/3AFVpZ
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org8:
FileAppend,
(
[Freeway Inc. Cinema]
p Freeway Cinema представляет свой новый проект - «Иллюзия выбора»!
p Данный фильм расскажет интересную историю про то, что выборы губернатора Провинции это не всегда честно.
p Данный фильм вы можете посмотреть в нашей группе в ВК - https://clck.ru/3GssoU!
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org9:
FileAppend,
(
[ProffEvent]
p Хотите ярко отметить свой День Рождения? Красиво сделать предложение или сыграть свадьбу?
p ProffEvent - многофункциональный сервис, по организации мероприятий! Дни Рождения, свадьбы, дискотеки, квесты, вечеринки и много другое.
p Закажи свой незабываемый праздник через группу Вконтакте: https://vk.com/proffevents (F8 - Ctrl C => Ctrl V)
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org10:
FileAppend,
(
[Media Star]
p Откройте для себя новую эру развлечений с продюсерским центром Media Star!
p Наш продюсерский центр специализируется на организации зажигательных концертов и дискотек, а также создании видеозаписей этих событий.
p Свяжитесь с нами, и позвольте вашему следующему мероприятию стать главным событием года. Мы в VK - https://vk.com/public80753505 (F8 - ctrl+c)
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org11:
FileAppend,
(
[Eclipse AutoClub]
p Наскучил дизайн вашего автомобиля или хотите запечатлеть ваше авто в красивых кадрах?
p Автоклуб Eclipse предлагает превратить ваш автомобиль в произведение искусства!
p А любителям экстрима предлагаем принять участие в автогонках и окунуться в мир автомобилей!
p Также у нас вы можете заказать стайлинг, фотосессию и видеосъемку: vk.com/eclipsetun (Скопировать в F8)
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org12:
FileAppend,
(
[Prov Auction]
p Компания Prov объявляет глобальный набор арендодателей к себе в команду!
p Предлагайте свои эксклюзивные автомобили в аренду и получайте стабильный доход!
p Более подробная информация: vk.cc/cJCkSJ (F8 -> Ctrl C -> Ctrl V)
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org13:
FileAppend,
(
[Prov Detailing]
p Компания Prov объявляет глобальный набор арендодателей к себе в команду!
p Предлагайте свои эксклюзивные автомобили в аренду и получайте стабильный доход!
p Более подробная информация: vk.cc/cJCkSJ (F8 -> Ctrl C -> Ctrl V)
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org14:
FileAppend,
(
[Kayo Prod]
p Желали провести концерт вашего любимого артиста? Тогда вам в Kayo Prod!
p Это новый сервис для организации концертов по всей республике!
p Заинтересовало? Переходите по ссылке: vk.com/kayoprods и заказывайте в личных сообщениях артиста.
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org15:
FileAppend,
(
[Prov Design]
p Компания Prov объявляет глобальный набор арендодателей к себе в команду!
p Предлагайте свои эксклюзивные автомобили в аренду и получайте стабильный доход!
p Более подробная информация: vk.cc/cJCkSJ (F8 -> Ctrl C -> Ctrl V)
)`n`n, %A_Scriptdir%\Реклама.txt
return

Org16:
FileAppend,
(
[Effect Studio]
p Мечтал о красивом оформлении? Воплоти свою мечту с "Effect Studio"!
p Лучшие дизайнеры, дешевые цены! Уже хочешь заказать? Беги сюда - https://vk.com/effect_designstudio (F8 => Ctrl C => Ctrl V)
)`n`n, %A_Scriptdir%\Реклама.txt
return
