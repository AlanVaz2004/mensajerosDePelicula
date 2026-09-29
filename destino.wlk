object matrix{

    method precio(){
        return 500
    }

    method dejaEntrar(mensajero){
        return mensajero.puedeLlamar()
    }
}

object brooklyn{

    method precio(){
        return 150
    }

    method dejaEntrar(mensajero){
        return mensajero.peso() <= 1000
    }
}