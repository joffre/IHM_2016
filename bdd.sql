create DATABASE ihm;
use ihm;

CREATE TABLE IF NOT EXISTS document (
  idDocument INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  idDocument varchar(20) NOT NULL,
  nomDocument varchar(80) NOT NULL
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
 CREATE TABLE IF NOT EXISTS utilisateur (
  idUtilisateur varchar(20) NOT NULL,
  nomUtilisateur varchar(80) NOT NULL,
  emailUtilisateur varchar(80) NOT NULL,
  mdpUtilisateur varchar(80) NOT NULL,
  PRIMARY KEY (idUtilisateur)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
 CREATE TABLE IF NOT EXISTS commentaire (
  idCommentaire varchar(20) NOT NULL,
  detailCommentaire varchar(200) NOT NULL,
  PRIMARY KEY (idCommentaire)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
 CREATE TABLE IF NOT EXISTS note (
  idNote varchar(20) NOT NULL,
  positiveNote boolean NOT NULL,
  idDocument varchar
  PRIMARY KEY (idNote)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;