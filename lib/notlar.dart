/*
-MaterialApp projenin bel kemiği olduğunu daha önce söylemiştik. Bunu ispatlamanın en güzel örneği rotalardır. MaterialPageRoute sınıfı MaterialApp olmadan çalışmaz.
-Ben rotalara niye ihtiyaç duyarım? Ben her sayfa geçişinde MaterialPageRoute sınıfını çağırıyor muyum? bu performans açısından iyi değil. Bu yüzden rotaları kullanmak daha performanslıdır.
-Rota kullanmanın iki yolu vardır. Bir tanesi standart olan diğeri gelişmiş olan. 
-Aralarındaki fark biri sadece sayfa geçişini sağlar. 
-Diğeri ise hem sayfa geçişini hemde veri aktarımını sağlar ama daha karmaşıktır. 
-Rotaları tanımlamak için MaterialApp içerisindeki routes parametresi kullanılır ve bizden bir map ister içine rota ister.

-Eğer ana rotayı tanımlamak istersek / işareti ile tanımlarız:

 "/": (context) => RedPage(),

 Eğer bunu yapıyorsanız artık diğer rotaların başına bu slash hep konmalıdır:

  "/yellowPage": (context) => YellowPage(),
        "/greenPage": (context) => GreenPage(),

  ayrıca bu kök dizinini kullanacaksanız artık materialApp de home parametresini kullanamazsınız ya kaldırın ya da yorum satırı yapın:

   //home: RedPage(),

   Eğer bu rotada herhangi bir yanlış yol olursa çalışan özel bir parametre vardır bu da materialApp içerisindedir routes ın bittiği yere şunu tanımlıyoruz tabi daha öncesinde bir hata sayfası oluşturduk:

    onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => HataSayfasi()),      

*/
