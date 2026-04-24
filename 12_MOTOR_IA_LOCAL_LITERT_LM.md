# MOTOR IA LOCAL L99 — L.I.N.D.A. EDGE

Actúa como ingeniero senior experto en IA local Android, LiteRT, LiteRT-LM, MediaPipe LLM Inference API, Edge Gallery, modelos cuantizados, mobile-first y sistemas offline-first.

Necesito integrar el MOTOR IA LOCAL de L.I.N.D.A. EDGE para demo funcional en Android.

MODELOS OBJETIVO:
1. Qwen2.5-1.5B-Instruct como motor principal.
2. DeepSeek-R1-Distill-Qwen-1.5B como motor comparativo táctico.

REFERENCIA TÉCNICA:
- Modelos LiteRT / LiteRT-LM.
- Uso en Android mediante Edge Gallery o APK de LLM Inference API.
- Soporte de inferencia local.
- Preferencia por modelos cuantizados dynamic_int8.
- Evaluar CPU/GPU.
- Considerar XNNPACK.
- Considerar rendimiento, memoria, latencia y tiempo al primer token.
- El sistema debe funcionar offline.

OBJETIVO DEL DEMO:
Crear un demo local que permita:
1. cargar una cuenta de cobranza de ejemplo,
2. enviar los datos al modelo local,
3. recibir JSON estructurado,
4. mostrar recomendación táctica,
5. generar discurso,
6. generar mensaje WhatsApp,
7. comparar Qwen vs DeepSeek si ambos están disponibles.

REGLA CRÍTICA:
La IA NO debe responder texto libre.
Debe responder JSON válido.

JSON ESPERADO:
{
  "resumen_cuenta": "",
  "riesgo": "bajo | medio | alto | critico",
  "tono_recomendado": "empatico | firme | contencion | preventivo",
  "objetivo_principal": "recuperar_total | contener_2_pagos | seguimiento",
  "discurso_sugerido": "",
  "objecion_probable": "",
  "respuesta_objecion": "",
  "siguiente_accion": "",
  "mensaje_whatsapp": "",
  "mensaje_sms": "",
  "mensaje_correo": "",
  "alertas": []
}

CASO DE PRUEBA:
Cuenta:
- segmento: 31-60
- comportamiento: malo
- pagos vencidos: 3
- monto vencido: 4800
- promesa incumplida: sí
- última gestión: no contestó
- objetivo: recuperar total o mínimo 2 pagos

ENTREGABLE:
1. arquitectura del motor IA local,
2. flujo Android,
3. cómo probar con Edge Gallery,
4. cómo probar con APK LLM Inference API,
5. código base de integración,
6. prompt local,
7. parser JSON,
8. fallback si falla el modelo local,
9. conexión futura con backend,
10. demo mínimo funcional.

IMPORTANTE:
No inventes API keys.
No hardcodees secretos.
No dependas de internet para inferencia local.
Entrega una solución real, ejecutable y escalable.
