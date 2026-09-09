object jeanGrey{
    const puedeLlamar = true
    const peso = 65

    method peso(){
        return peso
    }

    method puedeLlamar(){
        return puedeLlamar
    }
}

object neo{
    var puedeLlamar = true
    const peso = 0

    method peso(){
        return peso
    }

    method puedeLlamar(){
        return puedeLlamar
    }

    method puedeLlamar(_puedeLlamar){
        puedeLlamar = _puedeLlamar
    }

}

object saraConnor{
    const puedeLlamar = false
    var peso = 70

    method peso(){
        return peso
    }

    method peso(_peso){
        peso = _peso
    }

    method puedeLlamar(){
        return puedeLlamar
    }

}