package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.segurosbolivar.avaluos.entities.HistoricoAvaluo;
import com.segurosbolivar.avaluos.entities.Ciudad;

/**
 * Objeto de acceso a datos de la entidad HistoricoAvaluos
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */

public class HistoricoAvaluosDao extends JpaDao<HistoricoAvaluo> {
	
	/**
	 * Retorna el listado de históricos consultados de acuerdo a los filtros aplicados
	 * @param hist objeto de Histórico de Avalúos
	 * @return Listado de objetos de históricos
	 */
	public List<HistoricoAvaluo> consultaHistoricos(HistoricoAuxDao hist)
	{ EntityManager em = emf.createEntityManager();
	  
	  String consulta = new String("select h from HistoricoAvaluo h where 1 = 1");
	  
      System.out.println("TipoD "+hist.tipoDocumento);
	  if(hist.tipoDocumento != null && !hist.tipoDocumento.equals(""))
	  { consulta = consulta.concat(" AND h.idTipoIdentificacion = "+hist.tipoDocumento);
	  }	  
	  
      System.out.println("NumeroD "+hist.numeroIdentificacion);
	  if(hist.numeroIdentificacion != null && !hist.numeroIdentificacion.equals(new BigDecimal("0"))&& hist.numeroIdentificacion.length()>0)
	  { consulta = consulta.concat(" AND h.numeroIdentificacion = '"+hist.numeroIdentificacion+"'");
	  }
      
	  System.out.println("Nombre "+hist.nombreSolicitante);
	  if(hist.nombreSolicitante != null && !hist.nombreSolicitante.equals(""))
	  { consulta = consulta.concat(" AND h.nombreSolicitante LIKE UPPER('%"+hist.nombreSolicitante+"%') ");
	  }
	  
	  System.out.println("FechaAvaluoDesde "+ hist.fechaAvaluoDesde);
	  if(hist.fechaAvaluoDesde != null)
	  { consulta = consulta.concat(" AND h.fechaAvaluo >= :fechaAvaDesde");
	  }
	  
	  System.out.println("FechaAvaluoHasta "+ hist.fechaAvaluoHasta);
	  if(hist.fechaAvaluoHasta != null)
	  { consulta = consulta.concat(" AND h.fechaAvaluo <= :fechaAvaHasta");
	  }
	  
	  System.out.println("Departamento "+hist.idDepartamento);
	  if(hist.idDepartamento != null && !hist.idDepartamento.equals(new BigDecimal("0")))
	  { consulta = consulta.concat(" AND h.idDepartamento = "+hist.idDepartamento);
	  }
	  
	  System.out.println("Ciudad "+hist.idCiudad);
	  if(hist.idCiudad != null && !hist.idCiudad.equals(new BigDecimal("0")))
	  { consulta = consulta.concat(" AND h.idCiudad = "+hist.idCiudad);
	  }
	  
	  System.out.println("Direccion "+hist.direccionInmueble);
	  if(hist.direccionInmueble != null && !hist.direccionInmueble.equals(""))
	  { consulta = consulta.concat(" AND h.direccionInmueble LIKE UPPER('%"+hist.direccionInmueble+"%') ");
	  }
	  
	  System.out.println("Matricula "+ hist.getMatriculaInmobiliaria());
	  if(hist.getMatriculaInmobiliaria() != null && !hist.getMatriculaInmobiliaria().equals(""))
	  {  consulta = consulta.concat(" AND h.matriculaInmobiliaria LIKE UPPER('%"+hist.getMatriculaInmobiliaria()+"%') ");
	  }
	  
	  System.out.println("Estado "+hist.estadoAvaluo);
	  if(hist.estadoAvaluo != null && !hist.estadoAvaluo.equals(new BigDecimal("0")))
	  { consulta = consulta.concat(" AND h.estadoAvaluo = "+hist.estadoAvaluo);
	  }
      
	  System.out.println("Fecha Creación Desde "+ hist.fechaCreacionDesde);
	  if(hist.fechaCreacionDesde != null)
	  { consulta = consulta.concat(" AND h.fechaCreacion >= :fechaCDesde");
	  }
	  
	  System.out.println("Fecha Creación Hasta "+ hist.fechaCreacionHasta);
	  if(hist.fechaCreacionHasta != null)
	  { consulta = consulta.concat(" AND h.fechaCreacion <= :fechaCHasta");
	  }
	  
	  System.out.println("Fecha Transacción Desde "+ hist.fechaTransaccionDesde);
	  if(hist.fechaTransaccionDesde != null)
	  { consulta = consulta.concat(" AND h.fechaTransaccion >= :fechaTDesde");
	  }
	  
	  System.out.println("Fecha Transacción Hasta "+hist.fechaTransaccionHasta);
	  if(hist.fechaTransaccionHasta != null)
	  { consulta = consulta.concat(" AND h.fechaTransaccion <= :fechaTHasta");
	  }
	  
	  System.out.println("Usuario Aprueba "+ hist.usuarioAprueba);
	  if(hist.usuarioAprueba != null && !hist.usuarioAprueba.equals(""))
	  { consulta = consulta.concat(" AND h.usuario = '"+hist.usuarioAprueba+"'");
	  }
	  
	  System.out.println("Usuario Transacción "+hist.usuarioTransaccion);
	  if(hist.usuarioTransaccion != null && !hist.usuarioTransaccion.equals(""))
	  { consulta = consulta.concat(" AND h.usuarioTransaccion = '"+hist.usuarioTransaccion+"'");
	  }

	  Query query = em.createQuery(consulta);
	  
	  if(hist.fechaAvaluoDesde != null)
	  { query.setParameter("fechaAvaDesde", hist.fechaAvaluoDesde);
	  }
	  
	  if(hist.fechaAvaluoHasta != null)
	  { query.setParameter("fechaAvaHasta", hist.fechaAvaluoHasta);
	  }
	  
	  if(hist.fechaCreacionDesde != null)
	  { query.setParameter("fechaCDesde", hist.fechaCreacionDesde);
	  }
	  
	  if(hist.fechaCreacionHasta != null)
	  { query.setParameter("fechaCHasta", hist.fechaCreacionHasta);
	  }

	  if(hist.fechaTransaccionDesde != null)
	  { query.setParameter("fechaTDesde", hist.fechaTransaccionDesde);
	  }
	  
	  if(hist.fechaTransaccionHasta != null)
	  { query.setParameter("fechaTHasta", hist.fechaTransaccionHasta);
	  }
	  
	  System.out.println("Query "+ consulta);
	  
	  List<HistoricoAvaluo> listaHistoricos = query.getResultList();
	  
	  for(HistoricoAvaluo av:listaHistoricos)
	  {
		  av.setObjCiudad(ciudadId(av.getIdCiudad()));
	  }
	  
	  em.close();	  
	  return listaHistoricos;
	}
	
	/**
	 * Retorna la ciudad consultada por código Asobancaria
	 * @param id id de Asobancaria
	 * @return objeto Ciudad
	 */
	public Ciudad ciudadId(BigDecimal id)
	{/*emf = Persistence.createEntityManagerFactory("avaluosJpa");
	EntityManager entityManager=emf.createEntityManager();*/
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		/*if(!entityManager.isOpen())
			entityManager = emf.createEntityManager();*/
		
		Ciudad ciu = (Ciudad) entityManager.createQuery("SELECT c FROM Ciudad c WHERE c.codAsobancaria = "+id).getSingleResult();
		
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		
		return ciu;		
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}
}
