# FRONT L99 — L.I.N.D.A. EDGE

ACTÚA COMO INGENIERO SENIOR EXPERTO EN:

* Frontend mobile-first
* React Native / Flutter
* UX operativa de campo
* Offline-first
* SQLite local
* GPS
* Cámara
* Mapas
* Sincronización
* IA local LiteRT-LM
* Backend REST
* Sistemas de cobranza

OBJETIVO:
Desarrollar el FRONT operativo móvil de L.I.N.D.A. EDGE para ejecutivos de cobranza en campo.

REGLAS MAESTRAS:

1. Primero proximidad real.
2. Después scoring dentro del grupo cercano.
3. Foto obligatoria.
4. GPS obligatorio.
5. Geocerca obligatoria.
6. Nota obligatoria.
7. Outcome obligatorio.
8. No cerrar visita sin evidencia completa.
9. Modo offline obligatorio.
10. Sincronización posterior obligatoria.
11. Alertas en tiempo real al líder.
12. IA local con salida JSON estricta.

STACK RECOMENDADO:

* React Native
* TypeScript
* SQLite
* MMKV o almacenamiento cifrado
* React Query
* Zustand
* Cámara nativa
* GPS foreground/background
* Mapas
* Cola offline
* API REST
* LiteRT-LM Android

MODELOS IA:

* Qwen2.5-1.5B-Instruct como principal
* DeepSeek-R1-Distill-Qwen-1.5B como comparativo táctico

MÓDULOS:

1. DASHBOARD OPERATIVO
Debe mostrar:
* cuentas activas del día
* cuentas críticas
* avance diario
* avance semanal
* promesas de pago
* gestiones pendientes
* estado online/offline
* estado de sincronización
* modelo IA activo
* alertas pendientes
2. RUTA DEL DÍA
Debe mostrar:
* lista de cuentas por proximidad real
* scoring secundario
* siguiente cuenta sugerida
* mapa
* distancia estimada
* estado de visita
* iniciar ruta
* llegar
* capturar evidencia
* cerrar gestión

LÓGICA:

* obtener ubicación actual
* buscar cuentas pendientes cercanas
* agrupar por radio configurable
* ordenar ese grupo por scoring
* elegir siguiente cuenta
* recalcular durante la ruta
3. FICHA TÁCTICA
Debe mostrar:
* ID crédito
* cliente
* segmento 1-30 / 31-60 / 61-90
* monto vencido
* pagos vencidos
* comportamiento bueno / regular / malo
* riesgo
* dirección
* teléfono
* última gestión
* promesa activa
* acción recomendada
* tono recomendado
* historial breve
* botón IA táctica
4. CAPTURA DE GESTIÓN
Campos obligatorios:
* check-in
* check-out
* GPS
* geocerca
* permanencia mínima
* outcome
* nota
* foto
* promesa de pago si aplica
* monto prometido
* fecha promesa

VALIDACIÓN:
Una visita es válida solo si cumple:

* dentro de geocerca
* permanencia mínima
* foto cargada
* nota capturada
* outcome registrado
* timestamp válido
* GPS válido
* secuencia coherente
5. FOTO OBLIGATORIA
Debe:
* abrir cámara
* capturar foto
* guardar local
* guardar metadatos
* vincular con accountId, executiveId, routeStopId, visitId
* guardar lat, lng, timestamp
* sincronizar después
* impedir cierre sin foto
6. OFFLINE-FIRST
Debe:
* guardar cartera local
* guardar ruta local
* guardar gestiones local
* guardar fotos local
* crear sync\_queue
* reintentar automático
* evitar duplicados
* mostrar errores
* resolver conflictos
7. IA LOCAL
Debe generar:
* resumen cuenta
* discurso cobranza
* objeción probable
* respuesta objeción
* siguiente acción
* WhatsApp
* SMS
* correo

SALIDA JSON:
{
"resumen\_cuenta": "",
"riesgo": "bajo | medio | alto | critico",
"tono\_recomendado": "empatico | firme | contencion | preventivo",
"objetivo\_principal": "recuperar\_total | contener\_2\_pagos | seguimiento",
"discurso\_sugerido": "",
"objecion\_probable": "",
"respuesta\_objecion": "",
"siguiente\_accion": "",
"mensaje\_whatsapp": "",
"mensaje\_sms": "",
"mensaje\_correo": "",
"alertas": \[]
}

8. ALERTAS
Enviar eventos por:
* visita sin foto
* cierre inválido
* fuera de geocerca
* permanencia insuficiente
* GPS apagado
* permisos desactivados
* error sync
* domicilio incorrecto
* patrón sospechoso
9. SEGURIDAD
Debe incluir:
* sesión segura
* cifrado local
* control de permisos
* bitácora
* evidencia protegida
* no edición sin auditoría

ENTREGABLES:

1. arquitectura frontend
2. estructura carpetas
3. modelo SQLite
4. pantallas
5. componentes
6. hooks
7. servicios
8. validadores
9. sync queue
10. integración GPS
11. integración cámara
12. integración IA LiteRT-LM
13. integración backend
14. código base inicial
15. roadmap MVP / V2 / Enterprise

IMPORTANTE:
No generar solo diseño visual.
Generar un FRONT real, operativo, mobile-first, offline-first, con GPS, foto obligatoria, IA local y sincronización.

