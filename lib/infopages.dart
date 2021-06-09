import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class SobrePage extends StatefulWidget {
  SobrePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _SobrePageState createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('O que é COVID-19'),
          backgroundColor: Colors.green[300],
        ),
        body: Container(
            child: ListView(children: <Widget>[
          Image(image: NetworkImage('https://i.imgur.com/UKWKkXY.jpg')),
          SizedBox(height: 10),
          Text(
            'O que é COVID-19',
            style: TextStyle(color: Colors.green, fontSize: 35),
            textAlign: TextAlign.center,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Text(
                  'COVID-19 é a doença causada por uma nova espécie de coronavírus, denominado SARS-CoV-2. Ele pertence a uma família de vírus que já circulava no Brasil antes da pandemia e era responsável por grande parte dos resfriados comuns. Outras espécies foram responsáveis por doenças mais graves, como a Síndrome Aguda Respiratória Severa (SARS-CoV-1) e a Síndrome Respiratória do Oriente Médio (MERS-CoV) que não tiveram casos no Brasil.',
                  style: TextStyle(fontSize: 16))),
        ])));
  }
}

class SintomasPage extends StatefulWidget {
  SintomasPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _SintomasPageState createState() => _SintomasPageState();
}

class _SintomasPageState extends State<SintomasPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sintomas do COVID-19'),
          backgroundColor: Colors.green[300],
        ),
        body: Container(
            child: ListView(children: <Widget>[
          Image(image: NetworkImage('https://i.imgur.com/bOTlPsd.png')),
          SizedBox(height: 10),
          Text(
            'Sintomas do COVID-19',
            style: TextStyle(color: Colors.green, fontSize: 35),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'Os sintomas aparecem após 2 até 14 dias após a infecção. Qualquer pessoa pode apresentar sintomas leves ou severos da doença.\nVeja uma lista dos sintomas mais comuns, que podem estar presentes isoladamente ou diferentes combinações.',
                style: TextStyle(fontSize: 16)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                '• Febre ou calafrios\n• Tosse\n• Falta de ar\n • Fadiga\n• Dores pelo corpo\n• Dor de garganta\n• Dor de Cabeça\n• Coriza\n• Diarréia\n• Náuseas\n• Anosmia (ausência de olfato)\n',
                style: TextStyle(fontSize: 16)),
          ),
          RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  children: [
                    TextSpan(text: 'Fonte: '),
                    TextSpan(
                        style: TextStyle(color: Colors.blue[800]),
                        text: 'DASA',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://bit.ly/3gdYUha');
                          })
                  ]))
        ])));
  }
}

class VariantesPage extends StatefulWidget {
  VariantesPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _VariantesPageState createState() => _VariantesPageState();
}

class _VariantesPageState extends State<VariantesPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Variantes do COVID-19'),
          backgroundColor: Colors.green[300],
        ),
        body: Container(
            child: ListView(children: <Widget>[
          Image(image: NetworkImage('https://i.imgur.com/M4qUJ9Z.png')),
          SizedBox(height: 10),
          Text(
            'Variantes do COVID-19',
            style: TextStyle(color: Colors.green, fontSize: 35),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'Variante é um termo utilizado para fazer referência às alterações genéticas que foram identificadas num determinado agente infeccioso, que podem fazer com que tenha maior capacidade de infecção e/ou transmissão, assim como maior resistência à ação do sistema imunológico, por exemplo.\n\nAs variantes são mais comuns de acontecerem em vírus, já que o material genético é, na sua maioria, constituído por RNA, que é menos estável que o DNA e que, por isso, tem maior probabilidade de sofrer alterações ao longo do tempo.\n\nDe forma geral, o que se sabe até ao momento é que as variantes da COVID-19 são, de fato, mais fáceis de transmitir, mas ainda não existem evidências que mostrem que as variantes possam causar casos mais graves da doença. No entanto, são ainda necessários mais estudos que avaliem o comportamento dessas variantes e seus efeitos no organismo.',
                style: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 5),
          Text('Principais variantes do COVID-19',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text('1. Variante do Reino Unido (B.1.1.7)',
                  style: TextStyle(color: Colors.green[800], fontSize: 20),
                  textAlign: TextAlign.left)),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                  TextSpan(
                      text:
                          'A variante do Reino Unido, também conhecida por variante B.1.1.7, foi primeiramente identificada em setembro de 2020, tendo sido verificada a presença de 17 mutações em relação ao coronavírus "original". Dentre essas 17 mutações, 8 estão relacionadas com a proteína S, que é a proteína presente na superfície do vírus e que permite que se ligue às células humanas, resultando na infecção.\n\n'),
                  TextSpan(
                      text: 'O que significa: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'como consequência das mutações, a variante do Reino Unido consegue se ligar melhor às células humanas, dificultando trabalho do sistema imune para "quebrar" essa ligação, o que faz com que qualquer pessoa que entre em contato com esta variante tenha maiores chances de ficar doente do que com a variante "original". Além disso, como esta variante se espalhou muito rápido pelo Reino Unido, também se considera que tem maior capacidade de transmissão.\n\n'),
                  TextSpan(
                      text: 'É mais grave? ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Alguns estudos demonstraram que a infecção com esta variante poderia estar relacionada com maior taxa de hospitalização e mortalidade, no entanto essa relação também poderia ser explicada pelo grande aumento do número de casos em pouco tempo, o que acabou sobrecarregando o sistema de saúde, atrasando o início do tratamento e medidas de suporte. Dessa forma, são necessários mais estudos para entender a real gravidade desta variante.\n\n')
                ])),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text('2. Variante da África do Sul (B.1.351 ou 501Y.V2)',
                  style: TextStyle(color: Colors.green[800], fontSize: 20),
                  textAlign: TextAlign.left)),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                  TextSpan(
                      text:
                          'A variante da África do Sul, também conhecida como variante B.1.351 ou 501Y.V2, foi primeiramente identificada em outubro de 2020 e, assim como a variante do Reino Unido, apresenta também algumas mutações na proteína S, o que faz com que o vírus se melhor às células humanas, resultando em infecção.\n\n'),
                  TextSpan(
                      text: 'O que significa: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'esta variante apresenta maior transmissibilidade e é capaz de diminuir a ação dos anticorpos, o que dificulta o tratamento e recuperação da pessoa.\n\n'),
                  TextSpan(
                      text: 'É mais grave? ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Ainda não existem evidências científicas que indiquem que essa variante está relacionada com casos mais graves de COVID-19.\n\n')
                ])),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text('3. Variante Indiana (B.1.617.1/ 2/ 3)',
                  style: TextStyle(color: Colors.green[800], fontSize: 20),
                  textAlign: TextAlign.left)),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                  TextSpan(
                      text:
                          'As variantes da Índia, conhecidas também por B.1.617.1, B.1.617.2 e B.1.617.3, foram identificadas entre dezembro de 2020 e fevereiro de 2021 e também apresentam mutações na proteína S, favorecendo a infecção.\n\n'),
                  TextSpan(
                      text: 'O que significa: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'assim como as outras variantes, as mutações da variante Indiana aumentam a capacidade de transmissão do vírus.\n\n'),
                  TextSpan(
                      text: 'É mais grave? ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Foi verificado que a variante B.1.617.1 é capaz de escapar da atividade dos anticorpos, enquanto que as variáveis B.1.617.2 e B.1.617.3 são capazes de neutralizar a resposta imunológica do corpo, fazendo com que o vírus sobreviva mais facilmente no corpo, favorecendo a infecção. No entanto, são necessários mais estudos para entender se isso se traduz numa infecção mais grave por COVID-19.\n\n')
                ])),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text('4. Variante Brasileira (P.1)',
                  style: TextStyle(color: Colors.green[800], fontSize: 20),
                  textAlign: TextAlign.left)),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                  TextSpan(
                      text:
                          'A variante brasileira, também conhecida como variante de Manaus, variante P.1, B.1.1.28 ou 501Y.V3, foi primeiramente identificada em dezembro de 2020 e apresenta 17 mutações, sendo 12 localizadas na proteína S e 3 no receptor presente nessa proteína, o que aumenta a afinidade de ligação entre o vírus e as células humanas.\n\n'),
                  TextSpan(
                      text: 'O que significa: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'a taxa de transmissibilidade da variante brasileira é de até 2,4 vezes superior à variante "original" do coronavírus.\n\n'),
                  TextSpan(
                      text: 'É mais grave? ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Os principais estudos indicam que esta variante é até 61% mais capaz de neutralizar e escapar da atividade dos anticorpos circulantes no organismo contra o vírus. Porém, inda não se consegue comprovar que esta variante provoque uma infecção mais grave, sendo necessários mais estudos.\n\nRecentemente, foi também identificada a variante P.1.2, que surgiu como consequência de uma mutação na variante de Manaus, a variante P.1. No entanto, ainda não existem estudos que indiquem se essa variante é mais letal ou mais transmissível.\n\n')
                ])),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text('5. Variantes da Califórnia (B.1427 e B.1429)',
                  style: TextStyle(color: Colors.green[800], fontSize: 20),
                  textAlign: TextAlign.left)),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: [
                  TextSpan(
                      text:
                          'As variantes da Califórnia, conhecidas como variantes B.1427 e B.1429, também possuem mutações na proteína S, o que aumenta a ligação do vírus com as células humanas.\n\n'),
                  TextSpan(
                      text: 'O que significa: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'a capacidade de transmissão do vírus é mais elevada e, consequentemente, existe maior risco de ficar infectado caso se esteja em contato com alguém ou alguma superfície contaminada.\n\n'),
                  TextSpan(
                      text: 'É mais grave? ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Foi verificado que as variantes da Califórnia apresentam uma leve resistência ao tratamento para COVID-19 indicado nos Estados Unidos, no entanto ainda não se sabe qual o impacto dessa resistência na evolução e gravidade da doença.\n\n')
                ])),
          ),
          RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  children: [
                    TextSpan(text: 'Fonte: '),
                    TextSpan(
                        style: TextStyle(color: Colors.blue[800]),
                        text: 'TuaSaude',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://bit.ly/2T224N1');
                          })
                  ]))
        ])));
  }
}

class PrevenPage extends StatefulWidget {
  PrevenPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _PrevenPageState createState() => _PrevenPageState();
}

class _PrevenPageState extends State<PrevenPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Como se proteger'),
          backgroundColor: Colors.green[300],
        ),
        body: Container(
            child: ListView(children: <Widget>[
          Image(image: NetworkImage('https://i.imgur.com/WUSyMFA.png')),
          SizedBox(height: 10),
          Text(
            'Como se proteger',
            style: TextStyle(color: Colors.green, fontSize: 35),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text('Por que é recomendado ficar em casa no período da pandemia?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'O novo Coronavírus se dissemina de maneira muito rápida e fácil. O objetivo do isolamento social é diminuir a proliferação do vírus e, para que isso ocorra, evitar o contato físico e aglomerações é essencial. Caso seja necessário sair de casa, medidas de autocuidado devem ser tomadas, como utilizar máscaras de pelo menos 2 camadas, manter uma distância mínima de 1,5m de outras pessoas, usar álcool em gel 70% após tocar em qualquer superfície, evitar lugares com aglomerações e sempre que possível higienizar as mãos com água e sabão.',
                style: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 5),
          Text('Devo usar máscara facial ao sair de casa?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'No Brasil, muitas cidades e estados decretaram obrigatório o uso da máscara em ambientes coletivos, seja público ou privado. O descumprimento da regra, em algumas localidades, pode acarretar multas. O uso da máscara ajuda a conter a proliferação do vírus.',
                style: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 5),
          Text('Como posso me prevenir, além do isolamento social?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'Durante o isolamento social, é importante: manter as mãos higienizadas com água e sabão; limpar superfícies e objetos com frequência; espirrar ou tossir cobrindo a boca com o antebraço ou com um lenço de papel; evitar beijos e abraços; não dividir objetos de uso pessoal como talheres, copos ou aparelhos eletrônicos.',
                style: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 5),
          Text('Quais cuidados devo tomar com uma pessoa infectada em casa?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'De acordo com a Organização Mundial da Saúde, o paciente com suspeita ou diagnosticado com a COVID-19 deve tomar medidas de segurança para não disseminar a doença para outras pessoas que fazem parte do seu convívio. O paciente deve se manter isolado em um cômodo individual e ventilado; não receber visitas durante o processo de recuperação; limitar a circulação do paciente em áreas comuns da casa; se necessário estar no mesmo cômodo do paciente, deverá ser utilizado máscaras e luvas; lavar as mãos com frequência; separar talheres e copos e desinfetá-los após o uso.',
                style: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 5),
          Text('Como desinfetar o ambiente de Coronavírus?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'Os produtos capazes de matar o Coronavírus e que podem ser usados para a higienização de ambientes e alguns objetos são:',
                style: TextStyle(fontSize: 16)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                '• Desinfetantes\n• Detergente líquido\n• Água Sanitária (mistura de hipoclorito de sódio (cloro) e água – na proporção de 2% a 2,5% de cloro)\n •  Produtos multiusos que contenham cloro\n• Álcool líquido 70%\n• Sabão',
                style: TextStyle(fontSize: 16)),
          ),
          RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  children: [
                    TextSpan(text: 'Fonte: '),
                    TextSpan(
                        style: TextStyle(color: Colors.blue[800]),
                        text: 'DASA',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://bit.ly/3wPqyIa');
                          })
                  ]))
        ])));
  }
}

class VacinaPage extends StatefulWidget {
  VacinaPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _VacinaPageState createState() => _VacinaPageState();
}

class _VacinaPageState extends State<VacinaPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vacinas'),
          backgroundColor: Colors.green[300],
        ),
        body: Container(
            child: ListView(children: <Widget>[
          Image(image: NetworkImage('https://i.imgur.com/pXtxgBi.png')),
          SizedBox(height: 10),
          Text(
            'Vacinas',
            style: TextStyle(color: Colors.green, fontSize: 35),
            textAlign: TextAlign.center,
          ),
          Text('A vacina é segura?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'Sim. Todas as vacinas que são licenciadas são rigorosamente testadas. Tanto o registro ou mesmo a autorização emergencial só são realizados à partir de estudos que comprovem a segurança e a eficácia das vacinas. Mesmo após seu registro, há um monitoramento rigoroso de eventuais eventos adversos, tanto em estudos científicos como pelas equipes de vigilância epidemiológica e sanitária.',
                style: TextStyle(fontSize: 16)),
          ),
          Text('Como as vacinas funcionam?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'As vacinas atuam na prevenção, induzindo a criação de anticorpos por parte do sistema imunológico. Reduzem a possibilidade de infecção, porém caso a infecção ocorra, a vacina evitará sua evolução para quadros mais graves e principalmente a morte. É importante saber que há uma demora de alguns dias para esta resposta do organismo. Assim, nos primeiros dias após a vacinação, pode ocorrer tanto a manifestação de uma infecção que pode ter ocorrido alguns dias antes, como também é possível se infectar e transmitir a doença antes que comece a produção de anticorpos. Por isso é fundamental manter as medidas de prevenção e higiene. No caso da vacina contra a Covid-19, é importante saber que para ser imunizado é necessário tomar as duas doses da vacina. A segunda dose deve ser aplicada num intervalo de 14 a 28 dias em relação à primeira dose, no caso da Coronavac (Sinovac/Butantan) e de 90 dias no caso da Covishield (Astra Zeneca / Fiocruz).',
                style: TextStyle(fontSize: 16)),
          ),
          Text('O que a vacina garante em termos de proteção?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'As vacinas disponíveis atualmente no Brasil oferecem alta proteção para evitar casos graves e óbitos. Nos estudos realizados, a vacina CoronaVac, produzida pelo laboratório Sinovac em parceria com o Instituto Butantan, a eficácia global (proteção contra qualquer forma da doença) foi de 50,38%, com duas doses da vacina. Porém, evitou que 78 a cada 100 pessoas tivessem sintomas da doença que levassem à necessidade de procurar algum atendimento médico, ambulatorial ou hospitalar. No caso da vacina Covishield, desenvolvida pelo laboratório AstraZeneca/Universidade de Oxford em parceria com a Fiocruz, a proteção global foi de 73,43% após duas doses da vacina.',
                style: TextStyle(fontSize: 16)),
          ),
          Text('Que efeitos adversos posso esperar da vacina?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'Todas as vacinas licenciadas são testadas de forma rigorosa. O registro e a autorização emergencial somente são realizados depois de concluídos estudos que comprovem a segurança e eficácia das vacinas. Além disso, mesmo depois do registro, é feito o monitoramento para acompanhar eventuais efeitos adversos. Já são milhares de doses aplicadas. O que se observa é que as vacinas são muito seguras. Apesar de pouco comuns, podem ser observados eventualmente sintomas como dor de cabeça, dor muscular, febre baixa, dor ou vermelhidão no local da aplicação.',
                style: TextStyle(fontSize: 16)),
          ),
          Text('Quando serei imunizado?',
              style: TextStyle(color: Colors.green[700], fontSize: 24),
              textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'A vacinação será realizada seguindo-se uma ordem de prioridades. À medida que mais doses das vacinas forem disponibilizadas, mais pessoas serão imunizadas. Por isso, fique atento às informações da sua cidade e saiba quando será a sua vez de se vacinar. Vacine-se. A vacina é segura!',
                style: TextStyle(fontSize: 16)),
          ),
          RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  children: [
                    TextSpan(text: 'Fonte: '),
                    TextSpan(
                        style: TextStyle(color: Colors.blue[800]),
                        text: 'CONASS',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://bit.ly/3pmnFvL');
                          })
                  ]))
        ])));
  }
}

class InfoPage extends StatefulWidget {
  InfoPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sobre a ONECLICK'),
        ),
        body: Container(
            child: ListView(children: <Widget>[
          Image(image: NetworkImage('https://i.imgur.com/bOTlPsd.png')),
          SizedBox(height: 10),
          Text(
            'Sobre a ONECLICK',
            style: TextStyle(color: Colors.green, fontSize: 35),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
                'No novo cenário vivido pelo País e Mundo, torna-se fundmental a rápida geração de informações, Pensando nisso criamos uma empresa onde levamos a informação atualizada e tratada para nossos usuários, onde temos por missão evitar o mal que assola a geração, a propagação de notícias falsas, a tão famosa Fake News em casos de Sintomas, como se proteger, variantes do COVID-19 e vacinas sobre COVID-19.',
                style: TextStyle(fontSize: 16)),
          ),
        ])));
  }
}
