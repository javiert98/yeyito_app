import 'package:flutter/material.dart';






  class PoliticasPage extends StatefulWidget {
  const PoliticasPage({super.key});

  @override
  State<PoliticasPage> createState() => _PoliticasPageState();
}

class _PoliticasPageState extends State<PoliticasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions:  const [
      ]),
      body: SingleChildScrollView(
        child: Column(
          children:[
            const Text('Políticas de privacidad', style: TextStyle(fontSize: 30.0,)),
            const SizedBox(height: 25.0,),
            politicas(),
          ]
        ),
      ),
    );
  }
  
 Widget politicas() {
  final size = MediaQuery.of(context).size;
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
    // width: size.width * 0.80,
    child:  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('1. GENERAL', style: TextStyle(fontSize: 20.0,)),
          const SizedBox(height: 18.0,),
          const Text('Yeyito App ("nosotros", "nuestro" o "nos") se compromete a proteger su privacidad. Esta Política de privacidad explica cómo Yeyito App recopila, usa y divulga su información personal', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify),
          const SizedBox(height: 18.0,),
          const Text('Esta Política de privacidad se aplica a nuestro sitio web, y sus subdominios asociados (colectivamente, nuestro "Servicio") junto con nuestra aplicación, Yeyito App. Al acceder o utilizar nuestro Servicio, usted indica que ha leído, comprendido y aceptado nuestra recopilación, almacenamiento, uso y divulgación de su información personal como se describe en esta Política de privacidad y en nuestros Términos y Condiciones.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),        
          const SizedBox(height: 18.0,),
          const Text('2. DEFINICIONES Y TÉRMINOS CLAVE', style: TextStyle(fontSize: 20.0,)),
          const SizedBox(height: 18.0,),
          const Text('Para ayudar a explicar las cosas de la manera más clara posible en esta Política de privacidad, cada vez que se hace referencia a cualquiera de estos términos, se definen estrictamente como:', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify),
          const SizedBox(height: 18.0,),
          const Text('• Cookie: pequeña cantidad de datos generados por un sitio web y guardados por su navegador web. Se utiliza para identificar su navegador, proporcionar análisis, recordar información sobre usted, como su preferencia de idioma o información de inicio de sesión.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify),
          const SizedBox(height: 12.0,),
          const Text('• Compañía: cuando esta política menciona "Compañía", "nosotros", "nos" o "nuestro", se refiere a Goldenserv, C.A., domiciliada en la Calle El Mirador, Edif Hadamir Piso 8 Apto 81 Municipio Libertador del Distrito Capital, Venezuela que es responsable de su información en virtud de esta Política de privacidad.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify),
          const SizedBox(height: 12.0,),
          const Text('• Plataforma: sitio web de Internet, aplicación web o aplicación digital de cara al público de Yeyito App.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('• País: donde se encuentran Yeyito App o los propietarios / fundadores de Yeyito App, en este caso es Venezuela.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('• Cliente: se refiere a la empresa, organización o persona que se registra para utilizar el Servicio Yeyito App para gestionar las relaciones con sus consumidores o usuarios del servicio.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('• Dispositivo: cualquier dispositivo conectado a Internet, como un teléfono, tablet, computadora o cualquier otro dispositivo que se pueda usar para visitar Yeyito App y usar los servicios.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('• Dirección IP: a cada dispositivo conectado a Internet se le asigna un número conocido como dirección de protocolo de Internet (IP). Estos números generalmente se asignan en bloques geográficos. A menudo, se puede utilizar una dirección IP para identificar la ubicación desde la que un dispositivo se conecta a Internet.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),        
          const SizedBox(height: 12.0,),
          const Text('• Personal: se refiere a aquellas personas que son empleadas por Yeyito App o están bajo contrato para realizar un servicio en nombre de una de las partes.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 12.0,),
          const Text('• Datos personales: cualquier información que directa, indirectamente o en conexión con otra información, incluido un número de identificación personal, permita la identificación de una persona física.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 12.0,),
          const Text('• Servicio: se refiere al servicio brindado por Yeyito App como se describe en los términos relativos (si están disponibles) y en esta plataforma.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 18.0,),
          const Text('3. ¿QUÉ INFORMACIÓN RECOPILAMOS?', style: TextStyle(fontSize: 20.0,)),
          const SizedBox(height: 18.0,),
          const Text('Recopilamos información suya cuando visita nuestra plataforma, se registra en nuestro sitio, realiza un pedido, se suscribe a nuestro boletín, responde a una encuesta o completa un formulario: ', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 12.0,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Text('1. Nombre / nombre de usuario\n2. Números de teléfono\n3.Correos electrónicos\n4. Direcciones de correo\n5. Edad\n6. Contraseña', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          ),
          const SizedBox(height: 18.0,),
          const Text('4. ¿CUÁNDO USA YEYITO APP LA INFORMACIÓN DEL USUARIO FINAL DE TERCEROS?', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Yeyito App recopilará los datos del usuario final necesarios para proporcionar los servicios de Yeyito App a nuestros clientes.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Los usuarios finales pueden proporcionarnos voluntariamente la información que han puesto a disposición en los sitios web de las redes sociales. Si nos proporciona dicha información, podemos recopilar información disponible públicamente de los sitios web de redes sociales que ha indicado. Puede controlar la cantidad de información que los sitios web de redes sociales hacen pública visitando estos sitios web y cambiando su configuración de privacidad.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('5. ¿DÓNDE Y CUÁNDO SE RECOPILA LA INFORMACIÓN DE LOS CLIENTES Y USUARIOS FINALES?', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Yeyito App recopilará la información personal que nos envíe. También podemos recibir información personal sobre usted de  terceros como se describe anteriormente.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('6. ¿CÓMO USAMOS LA INFORMACIÓN QUE RECOPILAMOS?', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Cualquiera de la información que recopilamos de usted puede usarse de una de las siguientes maneras:', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1. Para personalizar su experiencia (su información nos ayuda a responder mejor a sus necesidades individuales)',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('2. Para mejorar nuestra plataforma (nos esforzamos continuamente por mejorar lo que ofrece nuestra plataforma en función de la información y los comentarios que recibimos de usted)',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('3. Para mejorar el servicio al cliente (su información nos ayuda a responder de manera más efectiva a sus solicitudes de servicio al cliente y necesidades de soporte)',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('4. Para procesar transacciones',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('5. Para administrar un concurso, promoción, encuesta u otra característica del sitio ',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('6. Para enviar correos electrónicos periódicos',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
              ]
            ),
          ),
          const SizedBox(height: 18.0,),
          const Text('7. ¿CÓMO UTILIZAMOS SU DIRECCIÓN DE CORREO ELECTRÓNICO?', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Al enviar su dirección de correo electrónico en esta plataforma, acepta recibir nuestros correos electrónicos. Puede cancelar su participación en cualquiera de estas listas de correo electrónico en cualquier momento haciendo clic en el enlace de exclusión voluntaria u otra opción para cancelar la suscripción que se incluye en el correo electrónico respectivo. Solo enviamos correos electrónicos a personas que nos han autorizado a contactarlos, ya sea directamente o a través de un tercero. No enviamos correos electrónicos comerciales no solicitados.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Las direcciones de correo electrónico enviadas solo a través de la página de procesamiento de pedidos se utilizarán con el único propósito de enviarle información y actualizaciones relacionadas con su pedido. Sin embargo, si nos ha proporcionado el mismo correo electrónico a través de otro método, podemos usarlo para cualquiera de los fines establecidos en esta Política.\nNota: Si en algún momento desea cancelar la suscripción para no recibir correos electrónicos futuros, incluimos instrucciones detalladas para cancelar la suscripción en la parte inferior de cada correo electrónico (darse de baja).',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('8. ¿CUÁNTO TIEMPO CONSERVAMOS SU INFORMACIÓN?', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Conservamos su información solo mientras la necesitemos para proporcionarle Yeyito App y cumplir con los propósitos descritos en esta política. Este también es el caso de cualquier persona con la que compartamos su información y que lleve a cabo servicios en nuestro nombre. Cuando ya no necesitemos usar su información y no sea necesario que la conservemos para cumplir con nuestras obligaciones legales o reglamentarias, la eliminaremos de nuestros sistemas o la despersonalizaremos para que no podamos identificarlo.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('9. ¿CÓMO PROTEGEMOS SU INFORMACIÓN?', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Implementamos una variedad de medidas de seguridad para mantener la seguridad de su información personal cuando realiza un pedido, ingresa, envía o accede a su información personal. Ofrecemos el uso de un servidor seguro. Toda la información confidencial / crediticia suministrada se transmite a través de la tecnología Secure Socket Layer (SSL) y luego se encripta en nuestra base de datos de proveedores de pasarela de pago solo para que sea accesible por aquellos autorizados con derechos especiales de acceso a dichos sistemas, y deben mantener la información confidencial. Después de una transacción, su información privada (tarjetas de crédito, números de seguro social, finanzas, etc.) nunca se archiva. Sin embargo, no podemos garantizar la seguridad absoluta de la información que transmita a Yeyito App ni garantizar que su información en el servicio no sea accedida, divulgada, alterada o destruida por una infracción de cualquiera de nuestras condiciones físicas, salvaguardias técnicas o de gestión.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('10. ¿PODRÍA TRANSFERIRSE MI INFORMACIÓN A OTROS PAÍSES?', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Yeyito App está constituída en Venezuela. La información recopilada a través de nuestro sitio web, a través de interacciones directas con usted o del uso de nuestros servicios de ayuda puede transferirse de vez en cuando a nuestras oficinas o personal, o a terceros, ubicados en todo el mundo, y puede verse y alojarse en cualquier lugar de el mundo, incluidos los países que pueden no tener leyes de aplicación general que regulen el uso y la transferencia de dichos datos. En la mayor medida permitida por la ley aplicable, al utilizar cualquiera de los anteriores, usted acepta voluntariamente la transferencia transfronteriza y el alojamiento de dicha información.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 18.0,),
          const Text('11. ¿LA INFORMACIÓN RECOPILADA A TRAVÉS DEL SERVICIO YEYITO APP ES SEGURA?', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Tomamos precauciones para proteger la seguridad de su información. Contamos con procedimientos físicos, electrónicos y  administrativos para ayudar a salvaguardar, prevenir el acceso no autorizado, mantener la seguridad de los datos y usar correctamente su información. Sin embargo, ni las personas ni los sistemas de seguridad son infalibles, incluidos los sistemas de cifrado. Además, las personas pueden cometer delitos intencionales, cometer errores o no seguir las políticas. Por lo tanto, aunque hacemos todos los esfuerzos razonables para proteger su información personal, no podemos garantizar su seguridad absoluta. Si la ley aplicable impone algún deber irrenunciable de proteger su información personal, usted acepta que la mala conducta intencional serán los estándares utilizados para medir nuestro cumplimiento con ese deber.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 18.0,),
          const Text('12. ¿PUEDO ACTUALIZAR O CORREGIR MI INFORMACIÓN?', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Los derechos que tienes para solicitar actualizaciones o correcciones de la información que recopila Yeyito App dependen de tu relación con Yeyito App:',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('a) El personal puede actualizar o corregir su información según se detalla en nuestras políticas de empleo internas de la empresa.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                const SizedBox(height: 12.0,),
                const Text('b) Los clientes tienen derecho a solicitar la restricción de ciertos usos y divulgaciones de información de identificación personal de la siguiente manera.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                const SizedBox(height: 12.0,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: const Column(
                    children: [
                      Text('i) Puede comunicarse con nosotros para (1) actualizar o corregir su información de identificación personal,',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                      SizedBox(height: 12.0,),
                      Text('ii) Cambiar sus preferencias con respecto a las comunicaciones y otra información que recibe de nosotros, o',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                      SizedBox(height: 12.0,),
                      Text('iii) Eliminar la información de identificación personal que se mantiene sobre usted en nuestro sistema (sujeto al siguiente párrafo), cancelando su cuenta.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,)
                    ],
                  ),
                ),
              ]
            ),
          ),
          const SizedBox(height: 12.0,),
          const Text('Dichas actualizaciones, correcciones, cambios y eliminaciones no tendrán ningún efecto sobre otra información que mantenemos o información que hayamos proporcionado a terceros de acuerdo con esta Política de privacidad antes de dicha actualización, corrección, cambio o eliminación. Para proteger su privacidad y seguridad, podemos tomar medidas razonables (como solicitar una contraseña única) para verificar su identidad antes de otorgarle acceso a su perfil o hacer correcciones. Usted es responsable de mantener en secreto su contraseña única y la información de su cuenta en todo momento.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Debe tener en cuenta que tecnológicamente no es posible eliminar todos y cada uno de los registros de la información que nos ha proporcionado de nuestro sistema. La necesidad de realizar copias de seguridad de nuestros sistemas para proteger la información de pérdidas involuntarias significa que puede existir una copia de su información en una forma que no se pueda borrar y que será difícil o imposible de localizar para nosotros. Inmediatamente después de recibir su solicitud, toda la información personal almacenada en las bases de datos que usamos activamente y otros medios fácilmente buscables se actualizará, corregirá, cambiará o eliminará, según corresponda, tan pronto como y en la medida en que sea razonable y técnicamente posible',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Si es un usuario final y desea actualizar, eliminar o recibir cualquier información que tengamos sobre usted, puede hacerlo poniéndose en contacto con la organización de la que es cliente.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('13. PERSONAL', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Si es un trabajador o solicitante de Yeyito App, recopilamos la información que nos proporciona voluntariamente. Usamos la información recopilada con fines de recursos humanos para administrar los beneficios a los trabajadores y seleccionar a los solicitantes',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Puede comunicarse con nosotros para: ', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('a) Actualizar o corregir su información,',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('b) Cambiar sus preferencias con respecto a las comunicaciones y otra información que reciba de nosotros, o ',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('c) Recibir un registro de la información que tenemos relacionada con usted. ',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,)
              ],
            ),
          ),
          const SizedBox(height: 12.0,),
          const Text('Dichas actualizaciones, correcciones, cambios y eliminaciones no tendrán ningún efecto sobre otra información que mantenemos o información que hayamos proporcionado a terceros de acuerdo con esta Política de privacidad antes de dicha  actualización, corrección, cambio o eliminación.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('14. VENTA DE NEGOCIO', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Nos reservamos el derecho de transferir información a un tercero en el caso de una venta, fusión u otra transferencia de todos o sustancialmente todos los activos de Yeyito App o cualquiera de sus afiliadas corporativas (como se define en este documento), o la porción de Yeyito App o cualquiera de sus Afiliadas corporativas con las que se relaciona el Servicio, o en el caso de que descontinuemos nuestro negocio o presentemos una petición o hayamos presentado una petición contra nosotros en caso de quiebra, reorganización o procedimiento similar, siempre que el el tercero acepte adherirse a los términos de esta Política de privacidad.',style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('15. AFILIADOS', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Podemos divulgar información (incluida la información personal) sobre usted a nuestros afiliados corporativos. Para los propósitos de esta Política de Privacidad, "Afiliado Corporativo" significa cualquier persona o entidad que directa o indirectamente controla, está controlada por o está bajo control común con Yeyito App, ya sea por propiedad o de otra manera.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Cualquier información relacionada con usted que proporcionemos a nuestros afiliados corporativos será tratada por dichos afiliados corporativos de acuerdo con los términos de esta política de privacidad.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('16. LEY QUE RIGE', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Esta Política de privacidad se rige por las leyes de la República Bolivariana de Venezuela sin tener en cuenta su disposición sobre conflicto de leyes. Usted acepta la jurisdicción exclusiva de los tribunales en relación con cualquier acción o disputa que surja entre las partes en virtud de esta Política de privacidad o en relación con ella, excepto aquellas personas que puedan tener derecho a presentar reclamaciones en virtud del Escudo de privacidad o el marco suizo-estadounidense.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Las leyes de la República Bolivariana de Venezuela, excluyendo sus conflictos de leyes, regirán este Acuerdo y su uso de la plataforma. Su uso de la plataforma también puede estar sujeto a otras leyes locales, estatales, nacionales o internacionales.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Al usar Yeyito App o comunicarse con nosotros directamente, significa que acepta esta Política de privacidad. Si no está de acuerdo con esta Política de privacidad, no debe interactuar con nuestro sitio web ni utilizar nuestros servicios. El uso continuo del sitio web, la interacción directa con nosotros o después de la publicación de cambios en esta Política de privacidad que no afecten significativamente el uso o divulgación de su información personal significará que acepta esos cambios.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('17. TU CONSENTIMIENTO', style: TextStyle(fontSize: 20.0),),  
          const SizedBox(height: 18.0,),
          const Text('Hemos actualizado nuestra Política de privacidad para brindarle total transparencia sobre lo que se establece cuando visita nuestro sitio y cómo se utiliza. Al utilizar nuestra plataforma, registrar una cuenta o realizar una compra, por la presente acepta nuestra Política de privacidad y acepta sus términos.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),     
          const SizedBox(height: 18.0,),
          const Text('18. ENLACES A OTROS SITIOS WEB', style: TextStyle(fontSize: 20.0),),  
          const SizedBox(height: 18.0,),
          const Text('Esta Política de privacidad se aplica sólo a los Servicios prestados por Yeyito App. Los Servicios pueden contener enlaces a otros sitios web que Yeyito App no opera ni controla. No somos responsables por el contenido, la precisión o las opiniones expresadas en dichos sitios web, y dichos sitios web no son investigados, monitoreados o verificados por nuestra precisión o integridad. Recuerde que cuando utiliza un enlace para ir desde los Servicios a otro sitio web, nuestra Política de privacidad deja de estar en vigor. Su navegación e interacción en cualquier otro sitio web, incluidos aquellos que tienen un enlace en nuestra plataforma, están sujetos a las propias reglas y políticas de ese sitio web. Dichos terceros pueden utilizar sus propias cookies u otros métodos para recopilar información sobre usted.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 18.0,),
          const Text('19. COOKIES', style: TextStyle(fontSize: 20.0),),  
          const SizedBox(height: 18.0,),
          const Text('Yeyito App utiliza "cookies" para identificar las áreas de nuestro sitio web que ha visitado. Una cookie es una pequeña porción de datos que su navegador web almacena en su computadora o dispositivo móvil. Usamos cookies para mejorar el rendimiento y la funcionalidad de nuestra plataforma, pero no son esenciales para su uso. Sin embargo, sin estas cookies, es posible que ciertas funciones, como los videos, no estén disponibles o se le solicitará que ingrese sus datos de inicio de sesión cada vez que visite la plataforma, ya que no podríamos recordar que había iniciado sesión anteriormente. La mayoría de los navegadores web se pueden configurar para desactivar el uso de cookies. Sin embargo, si desactiva las cookies, es posible que no pueda acceder a la funcionalidad de nuestro sitio web correctamente o en absoluto. Nunca colocamos información de identificación personal en cookies.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),  
          const SizedBox(height: 18.0,),
          const Text('20. BLOQUEAR Y DESHABILITAR COOKIES Y TECNOLOGÍAS SIMILARES', style: TextStyle(fontSize: 20.0),),  
          const SizedBox(height: 18.0,),
          const Text('Donde sea que se encuentre, también puede configurar su navegador para bloquear cookies y tecnologías similares, pero esta acción puede bloquear nuestras cookies esenciales e impedir que nuestro sitio web funcione correctamente, y es posible que no pueda utilizar todas sus funciones y servicios por completo. También debe tener en cuenta que también puede perder información guardada (por ejemplo, detalles de inicio de sesión guardados, preferencias del sitio) si bloquea las cookies en su navegador. Los distintos navegadores ponen a su disposición distintos controles. Deshabilitar una cookie o una categoría de cookie no elimina la cookie de su navegador, deberá hacerlo usted mismo desde su navegador, debe visitar el menú de ayuda de su navegador para obtener más información.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 18.0,),
          const Text('21. DETALLES DEL PAGO', style: TextStyle(fontSize: 20.0),),  
          const SizedBox(height: 18.0,),
          const Text('Cualquier tarjeta de crédito, débito, tarjeta prepagada, depósito, transferencia u otros detalles de procesamiento de pagos que nos haya proporcionado, nos comprometemos a que esta información confidencial se almacene de la manera más segura posible.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 18.0,),
          const Text('22. PRIVACIDAD DE LOS NIÑOS', style: TextStyle(fontSize: 20.0),),  
          const SizedBox(height: 18.0,),
          const Text('No nos dirigimos a ninguna persona menor de 18 años. No recopilamos información de identificación personal de ninguna persona menor de 18 años. Si usted es padre o tutor y sabe que su hijo nos ha proporcionado datos personales, comuníquese con Nosotros. Si nos damos cuenta de que hemos recopilado datos personales de cualquier persona menor de 18 años sin la verificación del consentimiento de los padres, tomaremos medidas para eliminar esa información de nuestros servidores.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,), 
          const SizedBox(height: 18.0,),
          const Text('23. CAMBIOS EN NUESTRA POLÍTICA DE PRIVACIDAD', style: TextStyle(fontSize: 20.0),),  
          const SizedBox(height: 18.0,),
          const Text('Podemos cambiar nuestro Servicio y nuestras políticas, y es posible que debamos realizar cambios en esta Política de privacidad para que reflejen con precisión nuestro Servicio y nuestras políticas. A menos que la ley exija lo contrario, le notificaremos (por ejemplo, a través de nuestro Servicio) antes de realizar cambios en esta Política de privacidad y le daremos la oportunidad de revisarlos antes de que entren en vigencia. Luego, si continúa utilizando el Servicio, estará sujeto a la Política de privacidad actualizada. ', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),  
          const SizedBox(height: 12.0,),  
          const Text('Si no desea aceptar esta o cualquier Política de privacidad actualizada, puede eliminar su cuenta.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),  
          const SizedBox(height: 18.0,),
          const Text('24. SERVICIOS DE TERCEROS', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Podemos mostrar, incluir o poner a disposición contenido de terceros (incluidos datos, información, aplicaciones y otros servicios de productos) o proporcionar enlaces a sitios web o servicios de terceros ("Servicios de terceros").', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),         
          const SizedBox(height: 12.0,),
          const Text('Usted reconoce y acepta que Yeyito App no será responsable de ningún Servicio de terceros, incluida su precisión, integridad, puntualidad, validez, cumplimiento de los derechos de autor, legalidad, decencia, calidad o cualquier otro aspecto de los mismos. Yeyito App no asume ni tendrá ninguna obligación o responsabilidad ante usted o cualquier otra persona o entidad por los Servicios de terceros.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Los Servicios de terceros y los enlaces a los mismos se brindan únicamente para su conveniencia y usted accede a ellos y los usa completamente bajo su propio riesgo y sujeto a los términos y condiciones de dichos terceros.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('25. TECNOLOGÍAS DE SEGUIMIENTO', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Column(
              children: [
                Text('• Cookies: Usamos Cookies para mejorar el rendimiento y la funcionalidad de nuestra plataforma, pero no son esenciales para su uso. Sin embargo, sin estas cookies, es posible que ciertas funciones, como los videos, no estén disponibles o se le solicitará que ingrese sus datos de inicio de sesión cada vez que visite la plataforma, ya que no podríamos recordar que había iniciado sesión anteriormente.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('• Almacenamiento Local:  El almacenamiento local, a veces conocido como almacenamiento DOM, proporciona a las aplicaciones web métodos y protocolos para almacenar datos del lado del cliente. El almacenamiento web admite el almacenamiento de datos persistente, similar a las cookies, pero con una capacidad muy mejorada y sin información almacenada en el encabezado de solicitud HTTP.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
              ],
            )
          ),
          const SizedBox(height: 18.0,),
          const Text('Información sobre el Reglamento general de protección de datos (RGPD)', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          const Text('Es posible que recopilemos y utilicemos información suya si pertenece al Espacio Económico Europeo (EEE), y en esta sección de nuestra Política de privacidad vamos a explicar exactamente cómo y por qué se recopilan estos datos, y cómo los mantenemos bajo protección contra la replicación o el uso incorrecto.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('a) ¿Qué es el RGPD?', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('RGPD es una ley de privacidad y protección de datos en toda la UE que regula cómo las empresas protegen los datos de los residentes de la UE y mejora el control que los residentes de la UE tienen sobre sus datos personales. El RGPD es relevante para cualquier empresa que opere a nivel mundial y no solo para las empresas con sede en la UE y los residentes de la UE. Los datos de nuestros clientes son importantes independientemente de dónde se encuentren, por lo que hemos implementado controles RGPD como nuestro estándar de referencia para todas nuestras operaciones en todo el mundo', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('b) ¿Qué son los Datos Personales?', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Cualquier dato que se relacione con un individuo identificable o identificable. El RGPD cubre un amplio espectro de información que podría usarse por sí sola o en combinación con otras piezas de información para identificar a una persona. Los datos personales van más allá del nombre o la dirección de correo electrónico de una persona. Algunos ejemplos incluyen información financiera, opiniones políticas, datos genéticos, datos biométricos, direcciones IP, dirección física, orientación sexual y origen étnico.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Los principios de protección de datos incluyen requisitos tales como:', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Column(
              children: [
                Text('• Los datos personales recopilados deben procesarse de manera justa, legal y transparente y solo deben usarse de la manera que una persona esperaría razonablemente.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('• Los datos personales sólo deben recopilarse para cumplir con un propósito específico y solo deben usarse para ese propósito. Las organizaciones deben especificar por qué necesitan los datos personales cuando los recopilan', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('• Los datos personales no deben conservarse más tiempo del necesario para cumplir con su propósito.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('• Las personas cubiertas por el RGPD tienen derecho a acceder a sus propios datos personales. También pueden solicitar una copia de sus datos y que sus datos se actualicen, eliminen, restrinjan o muevan a otra organización.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
              ],
            )
          ),
          const SizedBox(height: 12.0,),
          const Text('c) ¿Por qué es importante el RGPD?', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('RGPD agrega algunos requisitos nuevos con respecto a cómo las empresas deben proteger los datos personales de las personas que recopilan y procesan. También aumenta las apuestas para el cumplimiento al aumentar la aplicación e imponer mayores multas por incumplimiento. Más allá de estos hechos, es simplemente lo correcto. En Yeyito App creemos firmemente que la privacidad de sus datos es muy importante y ya contamos con prácticas sólidas de seguridad y privacidad que van más allá de los requisitos de esta nueva regulación. ', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('d) Derechos individuales del interesado: acceso, portabilidad y eliminación de datos', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Estamos comprometidos a ayudar a nuestros clientes a cumplir con los requisitos de derechos de los sujetos de datos de RGPD. Yeyito App procesa o almacena todos los datos personales en proveedores que cumplen con DPA y han sido examinados por completo. Almacenamos todas las conversaciones y los datos personales durante un máximo de 6 años, a menos que se elimine su cuenta. En cuyo caso, eliminamos todos los datos de acuerdo con nuestros Términos y Condiciones y Política de privacidad, pero no los conservaremos por más de 60 días.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 12.0,),
          const Text('Somos conscientes de que si trabaja con clientes de la UE, debe poder brindarles la capacidad de acceder, actualizar, recuperar y eliminar datos personales. Hemos sido configurados como autoservicio desde el principio y siempre le hemos dado acceso a sus datos y a los datos de sus clientes. Nuestro equipo de atención al cliente está aquí para que responda cualquier pregunta que pueda tener sobre cómo trabajar con la API.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
          const SizedBox(height: 18.0,),
          const Text('Contáctenos:', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 18.0,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Column(
              children: [
                Text('No dude en contactarnos si tiene alguna pregunta.', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('A través de correo electrónico: yeyitoapp@gmail.com', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
                SizedBox(height: 12.0,),
                Text('A través del número de teléfono: +584149028916', style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,),
              ],
            )
          ),
        ],
      ),
    ),
   );
 }
}