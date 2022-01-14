# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Page.create!(
  [
    {
      date:'2022-01-01',
      category:'お金',
      worry:'所持金が3000円をきりそう',
      thinking:'電気代が4000円だから足りない。',
      approach:'銀行で3000円くらいおろそう'
    },
    {
      date:'2022-01-03',
      category:'キャリア',
      worry:'エンジニアになるにはどうすればいいのか？',
      thinking:'やること ①プログラミングスキルを学ぶ ②ポートフォリオの作成 ③転職活動',
      approach:'まずは、3ヶ月を目処に独学で、railsを勉強してみよう！'
    },
    {
      date:'2022-01-05',
      category:'恋愛',
      worry:'最近、彼女とうまくいかない',
      thinking:'原因として考えられるのは、頻繁に連絡を取らなくなったことかな。。。',
      approach:'LINEだけでなく、電話でもコミュニケーションを取るようにしてみよう。'
    },
    {
      date:'2022-01-08',
      category:'健康',
      worry:'お腹が出てきた',
      thinking:'体重計で体重を測ると、65kg。以前よりも、体重が5kgくらい増えた。お菓子の食べ過ぎと運動不足が原因かも。。。',
      approach:'体重を60kgまで落とすために、こまめに運動しよう。お菓子も3日に1回に減らそう。'
    },
    {
      date:'2022-01-08',
      category:'その他',
      worry:'時間を有効に使いたい。。。',
      thinking:'コロナ禍で家にいる時間が多くなった。youtube見るなどで時間を浪費するのではなく、もっと有意義な時間を過ごしたい。最近、忙しすぎて好きな本や漫画を読んでいなかったな。。。',
      approach:'まずは、積読してある本や漫画を読んでみよう、'
    }
  ]
)
