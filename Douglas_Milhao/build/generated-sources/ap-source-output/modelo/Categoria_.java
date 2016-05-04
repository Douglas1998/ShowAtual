package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Pergunta;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2016-03-07T16:18:34")
@StaticMetamodel(Categoria.class)
public class Categoria_ { 

    public static volatile SingularAttribute<Categoria, Long> id;
    public static volatile ListAttribute<Categoria, Pergunta> perguntaList;
    public static volatile SingularAttribute<Categoria, String> nome;

}