///RUTINAS///
class Rutina {
  const aparatos=[]
  
}




///PACIENTES///
class Paciente{
  const property edad
  var property fortalezaMuscular
  var property dolor
  method disminuirDolor(parametro){dolor-=parametro}
  method aumentarfortalezaMuscular(parametro){fortalezaMuscular+=parametro}

method puedeUsar(aparato)=aparato.puedeSerUsado(self)
method usar(aparato) {aparato.usar(self)}
}


///APARATOS///
class Aparato{


}

class Magneto inherits Aparato{
method usar(paciente){
  if(self.puedeSerUsado(paciente)){
  paciente.disminuirDolor(paciente.dolor()*0.1)}}
method puedeSerUsado(paciente)=true

}
class Bicicleta inherits Aparato{
method usar(paciente){
  if(self.puedeSerUsado(paciente)){
  paciente.disminuirDolor(4)
  paciente.aumentarfortalezaMuscular(3)}
}

method puedeSerUsado(paciente)=paciente.edad()<8

}

class Minitramp inherits Aparato{
 method usar(paciente){
  if(self.puedeSerUsado(paciente)){
  paciente.aumentarfortalezaMuscular(paciente.edad()*0.1)}}
method puedeSerUsado(paciente)=paciente.dolor()<20
}