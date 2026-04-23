# LINDA L99 PROMPTS

## 00_PROMPT_MAESTRO_LINDA_L99

PROMPT:
Actúa como ingeniero principal del proyecto L.I.N.D.A. y consolida en una sola propuesta técnica los siguientes módulos:

1. ruteo por proximidad real
2. scoring secundario dentro de proximidad
3. validación de visita presencial
4. fotografía obligatoria
5. resguardo seguro de evidencia
6. alertas en tiempo real al líder
7. detección de simulación de gestión
8. integración backend + móvil + n8n

REGLAS MAESTRAS:
- primero proximidad, después scoring
- la foto es obligatoria
- toda foto debe quedar resguardada
- toda incidencia crítica debe alertar al líder en tiempo real
- una visita sin evidencia completa no es válida
- n8n orquesta, pero la lógica crítica vive en backend

QUIERO QUE GENERES:
- arquitectura final
- módulos
- modelo de datos
- endpoints
- flujo de eventos
- pseudocódigo
- prioridades de construcción
- riesgos técnicos
- propuesta de MVP
- propuesta de V2
- propuesta de escalamiento empresarial

La respuesta debe ser extremadamente clara, profesional y lista para que un ingeniero comience a construir sin ambigüedades.

---

## 01_RUTEO_POR_PROXIMIDAD

PROMPT:
Actúa como arquitecto senior de software especializado en sistemas operativos de cobranza, logística de campo, ruteo geográfico, validación GPS y trazabilidad operativa.

Necesito que implementes en el proyecto L.I.N.D.A. un motor de ruteo presencial con la siguiente regla operativa obligatoria:

REGLA PRINCIPAL DE ENRUTAMIENTO:
- El sistema debe elegir primero la siguiente cuenta por PROXIMIDAD REAL.
- Una vez identificadas las cuentas más próximas, debe aplicar SCORING como criterio de priorización secundaria.
- Es decir: la cercanía manda primero; el scoring decide después entre las opciones cercanas.

OBJETIVO:
Construir una ruta lógica, eficiente y físicamente coherente, evitando brincos ilógicos entre colonias o cuentas lejanas, y al mismo tiempo privilegiando la mejor oportunidad de recuperación dentro del radio próximo.

LÓGICA REQUERIDA:
1. Tomar la ubicación actual del ejecutivo.
2. Buscar las cuentas pendientes más cercanas.
3. Agrupar por proximidad razonable o radio configurable.
4. Dentro de ese grupo cercano, ordenar por scoring.
5. Elegir la mejor cuenta siguiente.
6. Repetir el proceso dinámicamente conforme avance la ruta.

CONDICIONES:
- No ordenar primero por scoring global ignorando geografía.
- No construir rutas alfabéticas.
- No mandar al ejecutivo a colonias lejanas si existen cuentas más próximas pendientes.
- La secuencia debe ser físicamente defendible y operativamente eficiente.

SCORING SECUNDARIO DENTRO DE LA ZONA CERCANA:
- bucket
- comportamiento histórico
- monto en atraso
- días de mora
- promesa incumplida
- probabilidad de contención
- prioridad operativa

ENTREGABLE TÉCNICO:
Quiero que desarrolles:
1. la lógica del algoritmo,
2. la función principal,
3. pseudocódigo,
4. implementación base en Node.js + TypeScript,
5. parámetros configurables,
6. estructura lista para integrarse al backend de L.I.N.D.A.

Devuelve la solución con enfoque profesional, modular y escalable.

---

## 02_SCORING_SECUNDARIO

PROMPT:
Actúa como ingeniero senior de backend y analítica operativa.

Necesito que construyas el módulo de scoring del sistema L.I.N.D.A. bajo esta regla obligatoria:

PRINCIPIO RECTOR:
- El scoring NO define primero la ruta.
- El scoring solo opera DESPUÉS de filtrar por proximidad.
- Debe funcionar como criterio de desempate o priorización dentro del grupo geográfico más cercano.

VARIABLES DEL SCORE:
- bucket: 1_30, 31_60, 61_90
- comportamiento histórico: bueno, regular, malo
- monto en atraso
- días de mora
- promesa incumplida
- riesgo estimado
- posibilidad de contención
- saldo vencido relevante

REGLAS DE NEGOCIO:
- bucket 61_90 tiene mayor peso
- comportamiento malo incrementa prioridad
- promesa incumplida incrementa prioridad
- mayor monto en atraso incrementa prioridad, dependiendo del bucket
- en bucket 1_30 debe pesar más el riesgo de deterioro futuro que solo el monto
- en bucket 31_60 y 61_90 debe balancearse comportamiento con monto en atraso y posibilidad de recuperación

REQUERIMIENTOS TÉCNICOS:
1. Diseña una fórmula inicial de score configurable.
2. Implementa pesos parametrizables.
3. Permite ajustar ponderaciones sin tocar lógica crítica.
4. Devuelve código limpio en TypeScript.
5. Incluye ejemplo de entrada y salida.
6. Incluye explicación de cómo integrarlo al motor de ruteo por proximidad.

La salida debe ser profesional y lista para integrarse a producción.

---

## 03_VALIDACION_VISITA

PROMPT:
Actúa como ingeniero senior especializado en validación operativa y antifraude de campo.

Necesito que implementes en L.I.N.D.A. un motor de validación de visita presencial.

UNA VISITA SOLO SERÁ VÁLIDA SI CUMPLE TODO LO SIGUIENTE:
1. geocerca alcanzada
2. permanencia mínima configurable
3. fotografía obligatoria cargada
4. nota o narrativa obligatoria
5. outcome registrado
6. secuencia coherente con la ruta
7. timestamp consistente

SI FALTA CUALQUIERA DE ESTOS ELEMENTOS:
- la visita no debe marcarse como válida
- debe enviarse incidencia al líder si corresponde
- debe quedar traza de la invalidación

REQUERIMIENTOS:
- diseña reglas explícitas
- crea función validateVisit()
- devuelve true/false y motivos
- genera estructura de respuesta clara
- incluye validaciones configurables
- deja lista la integración con route_stops y visit_evidence

Quiero:
1. diseño funcional,
2. pseudocódigo,
3. implementación TypeScript,
4. casos de prueba,
5. recomendaciones de endurecimiento operativo.

---

## 04_FOTO_OBLIGATORIA

PROMPT:
Actúa como arquitecto senior de sistemas móviles y backend con experiencia en trazabilidad operativa de campo.

Necesito implementar en L.I.N.D.A. una política obligatoria de evidencia fotográfica para visitas presenciales.

REGLA OBLIGATORIA:
- Toda visita presencial debe requerir FOTO OBLIGATORIA antes de poder cerrarse como gestión válida.
- Sin fotografía, la visita no puede marcarse como completada ni válida.
- La foto forma parte de la evidencia auditiva y operativa.

OBJETIVO:
Evitar simulación de gestión y fortalecer la trazabilidad de campo.

REQUERIMIENTOS FUNCIONALES:
1. El ejecutivo debe poder tomar la foto desde la app móvil.
2. La foto debe vincularse a:
   - accountId
   - executiveId
   - routeStopId o visitId
   - timestamp
   - coordenadas GPS
3. La foto debe ser obligatoria para cerrar la visita.
4. Debe permitirse más de una foto si la política lo requiere.
5. El sistema debe marcar la visita como inválida si no existe foto.

REQUERIMIENTOS TÉCNICOS:
- Diseña flujo móvil + backend.
- Propón estructura de tabla o almacenamiento.
- Define validaciones.
- Explica cómo bloquear el cierre de visita si falta la foto.
- Genera código base para:
  - endpoint de carga
  - validación de visita
  - vínculo con evidencia operativa

IMPORTANTE:
La fotografía no reemplaza GPS, nota ni outcome; es un componente obligatorio adicional.

Devuelve diseño, pseudocódigo y código base profesional.

---

## 05_RESGUARDO_FOTOS

PROMPT:
Actúa como ingeniero senior de backend, almacenamiento y seguridad de evidencias operativas.

Necesito diseñar en L.I.N.D.A. un sistema de resguardo seguro para las fotografías tomadas durante visitas presenciales.

OBJETIVO:
Garantizar conservación, trazabilidad, consulta y auditoría de la evidencia fotográfica.

REQUERIMIENTOS:
1. Toda foto debe almacenarse de forma persistente y segura.
2. Debe registrarse:
   - file_url o storage_key
   - visitId
   - accountId
   - executiveId
   - timestamp
   - lat
   - lng
   - hash o identificador único
3. Debe impedirse la pérdida de evidencia por fallas de conexión.
4. Si no hay internet, la app debe guardar temporalmente y sincronizar después.
5. Debe existir política de integridad y trazabilidad.
6. La evidencia debe estar disponible para consulta por supervisión.

REQUERIMIENTOS DE IMPLEMENTACIÓN:
- Proponer arquitectura de almacenamiento (por ejemplo object storage + tabla relacional).
- Diseñar tabla SQL para metadatos.
- Proponer convención de nombres de archivos.
- Incluir validaciones mínimas.
- Sugerir estrategia de sincronización offline/online.
- Entregar ejemplo de API y flujo de carga.

IMPORTANTE:
No quiero una solución improvisada. Quiero una base empresarial y escalable.

Devuelve:
1. diseño técnico,
2. modelo de almacenamiento,
3. SQL,
4. endpoints sugeridos,
5. mejores prácticas de seguridad y auditoría.

---

## 06_ALERTAS_TIEMPO_REAL

PROMPT:
Actúa como arquitecto senior de automatización, backend en tiempo real y supervisión operativa.

Necesito que implementes en L.I.N.D.A. un sistema de alertas en tiempo real para el líder o supervisor cuando ocurra una incidencia operativa relevante.

OBJETIVO:
Que el líder reciba alertas inmediatas sobre anomalías o incidencias de campo para actuar a tiempo.

INCIDENCIAS QUE DEBEN GENERAR ALERTA:
- visita sin foto
- intento de cierre sin evidencia completa
- check-in fuera de geocerca
- desplazamiento improbable
- secuencia física incoherente
- exceso de gestiones telefónicas sin visitas válidas
- cuenta marcada como visitada sin permanencia mínima
- falla repetida de sincronización
- domicilio incorrecto reportado
- incidencia crítica definida por negocio

CANALES DE ALERTA:
- panel supervisor
- WhatsApp
- correo
- opcionalmente SMS para severidad alta

REGLAS:
- las alertas deben dispararse en tiempo real o casi real
- deben clasificarse por severidad: low, medium, high
- deben incluir contexto suficiente
- deben registrarse en base de datos
- deben poder marcarse como atendidas o resueltas

ENTREGABLE TÉCNICO:
1. modelo de datos de alertas,
2. reglas de disparo,
3. flujo backend/n8n,
4. payload de alerta,
5. ejemplos de mensajes al líder,
6. implementación base.

Devuelve la solución en tono técnico profesional, lista para desarrollo.

---

## 07_SIMULACION_GESTION

PROMPT:
Actúa como arquitecto senior antifraude y analista de operaciones de campo.

Necesito implementar en L.I.N.D.A. un módulo automático de detección de simulación de gestión.

OBJETIVO:
Detectar comportamientos operativos incompatibles con una gestión presencial real.

SEÑALES A DETECTAR:
- visitas en puntos lejanos con diferencia de tiempo imposible
- velocidad de desplazamiento improbable
- check-ins fuera de geocerca
- cierres repetidos sin foto
- muchas gestiones telefónicas para inflar productividad
- múltiples cierres con permanencia mínima insuficiente
- secuencia geográfica incoherente
- evidencia débil o repetitiva

REQUERIMIENTOS:
1. definir reglas iniciales
2. generar alertas clasificadas por severidad
3. guardar alertas en base de datos
4. notificar al líder en tiempo real en casos críticos
5. dejar preparado el módulo para evolucionar a scoring de riesgo por ejecutivo

ENTREGABLE:
- diseño lógico
- tabla simulation_alerts
- función detectora
- ejemplos de alertas
- estrategia de integración con backend y n8n

Devuelve la solución de manera profesional, escalable y auditable.

---

## 08_FLUJO_N8N_ALERTAS

PROMPT:
Actúa como especialista senior en n8n y automatización de procesos operativos.

Necesito que construyas el flujo de n8n para L.I.N.D.A. que procese incidencias y genere alertas al líder en tiempo real.

OBJETIVO:
Orquestar eventos críticos de campo sin cargar toda la lógica de negocio dentro de n8n.

ALCANCE:
- recibir evento desde backend
- clasificar tipo de incidencia
- consultar datos complementarios si hace falta
- construir mensaje al líder
- enviar alerta por canal correspondiente
- registrar trazabilidad del envío
- permitir fallback de canal si falla uno

EVENTOS EJEMPLO:
- visit_invalid
- missing_photo
- out_of_geofence
- impossible_travel
- sync_failure
- suspicious_pattern

REQUERIMIENTOS:
- describe el flujo nodo por nodo
- indica qué va en backend y qué va en n8n
- propone payload estándar
- incluye manejo de errores
- incluye reintentos
- incluye bitácora de auditoría

Quiero un diseño robusto y listo para implementar.

---

## 09_APP_MOVIL_EJECUTIVO

PROMPT:
Actúa como arquitecto senior mobile + backend para operaciones de campo.

Necesito definir la app móvil del ejecutivo dentro del proyecto L.I.N.D.A.

OBJETIVOS DE LA APP:
- mostrar ruta del día
- indicar siguiente cuenta por proximidad y luego scoring
- registrar llegada
- capturar GPS
- tomar foto obligatoria
- capturar nota y outcome
- cerrar visita
- sincronizar evidencia
- trabajar con mala conectividad

REGLAS:
- no permitir cierre de visita sin foto
- no permitir cierre sin note + outcome
- enviar pings GPS periódicos
- soportar almacenamiento temporal offline
- sincronizar cuando haya conexión

ENTREGABLE:
1. arquitectura funcional de la app,
2. pantallas mínimas,
3. flujo de usuario,
4. endpoints que consumirá,
5. validaciones,
6. sugerencia de stack (Flutter o React Native),
7. estrategia offline-first.

Quiero un documento técnico aterrizado y útil para desarrollo real.

---

