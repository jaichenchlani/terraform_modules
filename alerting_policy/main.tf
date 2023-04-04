resource "google_monitoring_alert_policy" "default" {
    display_name = var.name
    enabled = var.enabled
    combiner = var.combiner
    documentation {
        content = var.description
    }
    user_labels = {
        provisioned_by = "terraform"
    }
    conditions {
        display_name = var.name
        condition_threshold {
            filter     = var.filter
            duration   = var.duration
            comparison = var.comparison
            threshold_value = var.threshold_value
            aggregations {
                alignment_period   = var.alignment_period
                per_series_aligner = var.per_series_aligner
                cross_series_reducer = var.cross_series_reducer
                group_by_fields = [ var.group_by_fields ]
            }
        }
    }
    alert_strategy {
        auto_close = var.auto_close
    }
    notification_channels = var.notification_channels
}

# resource "google_monitoring_alert_policy" "logs" {
#     display_name = var.name
#     enabled = var.enabled
#     combiner = var.combiner
#     documentation {
#         content = var.description
#     }
#     user_labels = {
#         provisioned_by = "terraform"
#     }
#     conditions {
#         display_name = var.name
#         condition_matched_log {
#             filter     = var.filter
#         }
#     }
#     alert_strategy {
#         auto_close = var.auto_close
#     }
#     notification_channels = var.notification_channels
# }

