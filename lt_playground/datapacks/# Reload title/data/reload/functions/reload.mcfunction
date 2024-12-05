title @a times 0 100000 0
title @a subtitle {"text":"Подгружаются датапаки, подожди секундочку","color":"yellow"}
bossbar set version value 0
bossbar set version_tagger value 0
title @a title [{"text":"Перезагрузка","color":"red"},{"text":"...","color":"gray"}]
title @a actionbar {"text":"Это НЕ перезапуск сервера. Перезагружаются датапаки. Тебя не выкинет","color":"aqua","bold":true}
worldborder warning distance 999999999
execute run reload
title @a times 0 40 20
title @a subtitle {"text":"Датапаки успешно перезагружены","color":"dark_green"}
title @a title {"text":"Готово!","color":"green"}
title @a actionbar {"text":"","color":"aqua","bold":true}
tellraw @a [{"text":"----------","color":"black"},{"text":" Перезагружено ","color":"dark_gray"},{"text":"----------"}]
worldborder warning distance 5