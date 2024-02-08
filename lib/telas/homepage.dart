
import 'package:flutter/material.dart';
import 'package:flutter_application_1_flutterdemo/telas/navegar.dart';
import 'package:flutter_application_1_flutterdemo/telas/perfil.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*
  definição de campos, propriedades, variáveis de 
  estado e métodos que serão utilizados para controlar o 
  comportamento da tela HomePage 
  */
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    const Navegar(),
    const PerfilUsuario(),
  ];

  @override
  void initState() {
    super.initState();
    _indiceAtual = 0; // Define o estado inicial para a primeira tela
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        //Titulo da AppBar
        title: const Text(
          'MOZ DONATE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: _indiceAtual == 0
          ? HomePageBody()
          : const Navegar(), 
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add), 
            label: 'Navegar'
            ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2), 
              label: 'Minha Conta'
            ),
        ],
        selectedItemColor: Colors.greenAccent,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Conteúdo da HomePage
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 10.0, 4.0),
            child: Container(
              height: 100,
              child: const Text(
                'Com Apenas um clique, pode doar um bem!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //Scrollview Horizontal
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 4.0),
            child: Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 200,
                      width: 375,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.lightBlue,
                              ),

                              child: Image.network('https://miro.medium.com/v2/resize:fit:771/1*5jK3I_0dCjV1ZTZthrDUgA.png',
                              fit: BoxFit.cover, // Ajuste para preencher o contêiner
                              ),

                            ),
                            const SizedBox(
                                height:
                                    10), // Espaçamento entre a imagem e o botão
                            Center(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("Doar Agora"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 75, 124, 223),
                                ), 
                              ),
                              
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 200,
                      width: 375,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.lightBlue,
                              ),

                              child: Image.network('https://www.unicef.org/india/sites/unicef.org.india/files/styles/media_banner/public/WCD-2021-Hero.jpg.webp?itok=Qq-Cf2US',
                              fit: BoxFit.cover, // Ajuste para preencher o contêiner
                              ),

                            ),
                            const SizedBox(
                                height:
                                    10), // Espaçamento entre a imagem e o botão
                            Center(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("Doar Agora"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 75, 124, 223),
                                ), 
                              ),
                              
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 200,
                      width: 375,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Colors.lightBlue,
                              ),

                              child: Image.network('https://miro.medium.com/v2/resize:fit:771/1*5jK3I_0dCjV1ZTZthrDUgA.png',
                              fit: BoxFit.cover, // Ajuste para preencher o contêiner
                              ),

                            ),
                            const SizedBox(
                                height:
                                    10), // Espaçamento entre a imagem e o botão
                            Center(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("Doar Agora"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 75, 124, 223),
                                ), 
                              ),
                              
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 10.0, 4.0),
            child: Container(
              height: 200,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                //color: Colors.greenAccent,
              ),
              child: Image.network("https://us.123rf.com/450wm/pikepicture/pikepicture2101/pikepicture210100133/162624596-food-donation-vector-icon-concept-volunteer-delivering-donation-box-with-foodstuffs-fresh-natural.jpg?ver=6"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 10.0, 4.0),
            child: Container(
              height: 200,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                //color: Colors.greenAccent,
              ),
              child: Image.network("https://i.pinimg.com/originals/49/72/a5/4972a52bd5eea2c0bc3047f24ca1fbb8.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 10.0, 4.0),
            child: Container(
              height: 200,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                
              ),
              child: Image.network("https://share.america.gov/wp-content/uploads/2023/05/USAID-food-SOUTHSUDAN-2021-05-RFSP-CRS-WillBaxter-57-1068x712.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
