{% docs order_status %}

| Status      | Definition                                           |
|-------------|------------------------------------------------------|
| delivered   | Order has been successfully delivered to the customer |
| canceled    | Order was canceled by either the customer or the system |
| invoiced    | Order has been invoiced but not yet shipped           |
| processing  | Order is being processed for shipping or delivery     |
| created     | Order has been created but not yet invoiced or shipped |
| shipped     | Order has been shipped but not yet delivered          |
| unavailable | The item is unavailable and cannot be fulfilled       |
| approved    | Order has been approved and is ready for further processing |


{% enddocs %}    