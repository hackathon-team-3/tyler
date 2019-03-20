provider "helm" {}

variable "students" { 
 default = ["Tyler","Roger","John","Gonzalo"]
}

data "template_file" "wetty-values"{
    count = "${length(var.students)}"
    template = "${file("./wetty-values.yaml")}"
    vars {
        lb_ip = "127.0.0.1"
        user = "${lower(element(var.students,count.index))}"
    }
}

resource "helm_release" "wetty"{
    count = "${length(var.students)}"
    name = "${lower(element(var.students,count.index))}"
    chart = "wetty2"
    values = [
      "${element(data.template_file.wetty-values.*.rendered,count.index)}"
    ]
    namespace = "${lower(element(var.students,count.index))}"
}    
