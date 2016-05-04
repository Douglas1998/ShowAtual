package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Categoria;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2016-03-07T16:18:34")
@StaticMetamodel(Pergunta.class)
public class Pergunta_ { 

    public static volatile SingularAttribute<Pergunta, Integer> id;
    public static volatile SingularAttribute<Pergunta, String> certa;
    public static volatile SingularAttribute<Pergunta, Categoria> categoria;
    public static volatile SingularAttribute<Pergunta, String> d;
    public static volatile SingularAttribute<Pergunta, String> enunciado;
    public static volatile SingularAttribute<Pergunta, String> b;
    public static volatile SingularAttribute<Pergunta, String> c;
    public static volatile SingularAttribute<Pergunta, String> a;
    public static volatile SingularAttribute<Pergunta, Integer> nivel;

}