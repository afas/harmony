#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
#cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#Mayor.create(name: 'Emanuel', city: cities.first)

#Post
#t.string :lang
#t.string :title
#t.text :short
#t.text :body
Post.create(lang: 'ru', title: 'Гармония в зеркале геометрии', short: 'Книга посвящена алгоритму формообразования, скрытому в глубине естественных наук и истории цивилизаций. Название означает, что принцип симметрии, работающий в структуре кристаллов, структуре живых молекул, в ритмах, соединяющих части в целое в формах живой природы, в формах великих шедевров искусства и догматы великих религий - можно полагать обусловленными одной данностью: бинарной структурой математического пространства.', body: '')
Post.create(lang: 'en', title: 'The garmony in a mirror of geometry', short: '', body: '')
Post.create(lang: 'ru', title: 'Альфа и омега', short: '', body: '')
Post.create(lang: 'en', title: 'Alpha and Omega', short: '', body: '')
Post.create(lang: 'ru', title: 'Реставрация утраченного знания', short: '', body: '')

#Static
#t.string :title_en
#t.string :title_ru
#t.text :short_en
#t.text :short_ru
#t.text :body_en
#t.text :body_ru
#t.string :short_url
Static.create(short_url: 'book-release', title_en: 'The garmony in a mirror of geometry', title_ru:'Гармония в зеркале геометрии', short_en: 'Joseph Shevelev', short_ru: 'Иосиф Шевелев')
Static.create(short_url: 'conception', title_en: 'Idea', title_ru:'Идея', short_en: '', short_ru: 'История и перспективы данной  работы разъясняем творцу и партнеру, контакты')
Static.create(short_url: 'person', title_en: 'Person', title_ru:'Персона', short_en: '', short_ru: 'Автобиография, библиография')