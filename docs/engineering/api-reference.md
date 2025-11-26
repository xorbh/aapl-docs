# API Reference

## Overview

This document provides technical reference information for integrating with our manufacturing systems and data APIs.

## API Endpoints

### Production Management API

#### Work Orders

**Get All Work Orders**
```
GET /api/v1/work-orders
```

Parameters:
- `status` - Filter by status (pending, in-progress, completed)
- `date_from` - Start date (YYYY-MM-DD)
- `date_to` - End date (YYYY-MM-DD)
- `limit` - Results per page (default: 50)

Response:
```json
{
  "data": [
    {
      "work_order_id": "WO-2024-001",
      "product_id": "PROD-123",
      "quantity": 100,
      "status": "in_progress",
      "start_date": "2024-11-26",
      "due_date": "2024-12-03",
      "progress": 45
    }
  ],
  "total": 125,
  "page": 1
}
```

**Get Work Order Details**
```
GET /api/v1/work-orders/{work_order_id}
```

Response:
```json
{
  "work_order_id": "WO-2024-001",
  "product_id": "PROD-123",
  "product_name": "Industrial Component A",
  "quantity_ordered": 100,
  "quantity_produced": 45,
  "quantity_scrapped": 2,
  "status": "in_progress",
  "assigned_equipment": ["MIL-001", "MIL-003"],
  "assigned_operators": ["EMP-001", "EMP-002"],
  "start_date": "2024-11-26",
  "due_date": "2024-12-03",
  "estimated_completion": "2024-12-02",
  "quality_status": "pass",
  "notes": "On schedule"
}
```

**Create Work Order**
```
POST /api/v1/work-orders
```

Request Body:
```json
{
  "product_id": "PROD-123",
  "quantity": 100,
  "due_date": "2024-12-03",
  "priority": "normal",
  "notes": "Customer special request"
}
```

Response: HTTP 201 Created

---

### Production Data API

#### Production Logs

**Get Production Logs**
```
GET /api/v1/production-logs
```

Parameters:
- `work_order_id` - Filter by work order
- `equipment_id` - Filter by equipment
- `date` - Filter by date (YYYY-MM-DD)

Response:
```json
{
  "data": [
    {
      "log_id": "LOG-001",
      "work_order_id": "WO-2024-001",
      "equipment_id": "MIL-001",
      "operator_id": "EMP-001",
      "timestamp": "2024-11-26T10:30:00Z",
      "units_produced": 25,
      "units_scrapped": 1,
      "downtime_minutes": 15,
      "reason": "tooling change"
    }
  ]
}
```

**Submit Production Log**
```
POST /api/v1/production-logs
```

Request Body:
```json
{
  "work_order_id": "WO-2024-001",
  "equipment_id": "MIL-001",
  "operator_id": "EMP-001",
  "units_produced": 25,
  "units_scrapped": 1,
  "downtime_minutes": 15,
  "notes": "Tooling change completed"
}
```

---

### Quality API

#### Inspection Records

**Get Inspection Records**
```
GET /api/v1/inspections
```

Parameters:
- `work_order_id` - Filter by work order
- `inspection_type` - fai, ipqc, final
- `date_from` - Start date
- `status` - pass, fail, conditional

Response:
```json
{
  "data": [
    {
      "inspection_id": "INS-001",
      "work_order_id": "WO-2024-001",
      "type": "ipqc",
      "timestamp": "2024-11-26T11:00:00Z",
      "inspector_id": "EMP-003",
      "status": "pass",
      "sample_size": 5,
      "defects_found": 0,
      "notes": "All dimensions within tolerance"
    }
  ]
}
```

**Submit Inspection Results**
```
POST /api/v1/inspections
```

Request Body:
```json
{
  "work_order_id": "WO-2024-001",
  "type": "ipqc",
  "inspector_id": "EMP-003",
  "status": "pass",
  "sample_size": 5,
  "defects_found": 0,
  "notes": "All dimensions within tolerance"
}
```

---

### Equipment API

#### Equipment Status

**Get Equipment Status**
```
GET /api/v1/equipment
```

Response:
```json
{
  "data": [
    {
      "equipment_id": "MIL-001",
      "name": "CNC Machine 1",
      "status": "running",
      "current_job": "WO-2024-001",
      "utilization": 85,
      "last_maintenance": "2024-11-20",
      "next_maintenance": "2024-12-04"
    }
  ]
}
```

**Get Equipment Details**
```
GET /api/v1/equipment/{equipment_id}
```

Response:
```json
{
  "equipment_id": "MIL-001",
  "name": "CNC Machine 1",
  "type": "CNC Machining Center",
  "status": "running",
  "current_job": "WO-2024-001",
  "uptime_percentage": 92.5,
  "total_hours": 8500,
  "maintenance_hours": 120,
  "last_maintenance": "2024-11-20T08:00:00Z",
  "next_maintenance": "2024-12-04",
  "critical_alerts": []
}
```

---

### Inventory API

#### Materials

**Get Inventory**
```
GET /api/v1/inventory
```

Parameters:
- `material_id` - Filter by material
- `low_stock` - Show only low stock items
- `supplier_id` - Filter by supplier

Response:
```json
{
  "data": [
    {
      "material_id": "MAT-001",
      "name": "Steel Bar 1.5\"",
      "quantity_on_hand": 250,
      "quantity_reserved": 50,
      "quantity_available": 200,
      "unit": "pieces",
      "reorder_point": 100,
      "supplier_id": "SUP-001",
      "last_received": "2024-11-20"
    }
  ]
}
```

**Update Inventory**
```
PUT /api/v1/inventory/{material_id}
```

Request Body:
```json
{
  "quantity_adjustment": -50,
  "reason": "Used in WO-2024-001",
  "reference": "WO-2024-001"
}
```

---

## Authentication

All API requests require authentication via Bearer Token:

```
Authorization: Bearer {api_token}
```

Tokens are issued by the system administrator and expire after 90 days.

---

## Error Handling

Standard HTTP status codes are used:

- `200` - Success
- `201` - Created
- `400` - Bad Request
- `401` - Unauthorized
- `403` - Forbidden
- `404` - Not Found
- `500` - Server Error

Error Response:
```json
{
  "error": {
    "code": "INVALID_REQUEST",
    "message": "Missing required field: quantity",
    "details": {
      "field": "quantity",
      "reason": "required"
    }
  }
}
```

---

## Rate Limiting

API requests are limited to:
- **100 requests per minute** for standard endpoints
- **10 requests per minute** for resource-intensive operations

Rate limit headers:
```
X-RateLimit-Limit: 100
X-RateLimit-Remaining: 95
X-RateLimit-Reset: 1669356000
```

---

## Webhooks

### Webhook Events

Subscribe to production events:

**Supported Events:**
- `work_order.created`
- `work_order.started`
- `work_order.completed`
- `quality.inspection_failed`
- `equipment.maintenance_due`
- `inventory.low_stock`

**Register Webhook**
```
POST /api/v1/webhooks
```

Request Body:
```json
{
  "event": "work_order.completed",
  "url": "https://your-system.com/webhook",
  "active": true
}
```

**Webhook Payload Example:**
```json
{
  "event": "work_order.completed",
  "timestamp": "2024-11-26T15:30:00Z",
  "data": {
    "work_order_id": "WO-2024-001",
    "quantity_produced": 100,
    "quality_status": "pass"
  }
}
```

---

## Data Formats

### Date/Time Format
ISO 8601: `YYYY-MM-DDTHH:MM:SSZ`

### Numeric Values
- Quantities: Integer
- Decimals: 2 decimal places
- Percentages: 0-100

---

## SDK & Libraries

Official SDKs available for:
- Python
- JavaScript/Node.js
- C#/.NET
- Java

Installation:
```bash
pip install manufacturing-api-client
```

Usage:
```python
from manufacturing_api import APIClient

client = APIClient(api_token="your_token")
work_orders = client.get_work_orders(status="in_progress")
```

---

## Changelog

### v1.0.0 (2024-11-01)
- Initial API release
- Work Order management
- Production logging
- Quality inspection endpoints
- Equipment status monitoring
- Inventory management

### v1.1.0 (2024-11-15)
- Added webhook support
- Improved error messages
- Rate limiting implementation
- Performance optimizations

---

## Support

For API questions and support:
- **Email**: api-support@company.com
- **Documentation**: https://api-docs.company.com
- **Status Page**: https://status.company.com
- **Forum**: https://community.company.com
