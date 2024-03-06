namespace app.elearning;
using { Language,managed } from '@sap/cds/common';

entity Categories {
    key id:UUID;
        name:String(50);
        description:String(100);
        Courses:Association to many Courses on Courses.categorie = $self
}

entity Courses : managed {
    key categorie:Association to Categories;
    key course_id:UUID;
        course_name:String(50);
        price:String(10);
        language:Language;

}


