object moto{

    method peso(){
        return 100
    }
}

object camion{
    const pesoDeCamion = 500
    var pesoDeAcoplados = 0

    method peso(){
        return pesoDeCamion + pesoDeAcoplados
    }

    method acoplados(cantidad){
        pesoDeAcoplados = 500 * cantidad
    }
}