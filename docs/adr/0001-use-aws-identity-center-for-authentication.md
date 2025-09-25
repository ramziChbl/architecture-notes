### Title: 001: Adopt AWS Identity Center for Authentication

**Status:** Accepted

**Context:**

I was previously using long-lived IAM user credentials (without MFA), managed through Leapp. This approach presented several challenges:

*   I encountered API restrictions when performing IAM operations, as temporary credentials from `sts:GetSessionToken` have limitations.
*   Managing long-lived IAM user credentials is a security risk and does not scale well.

**Decision:**

I adopted AWS Identity Center (formerly AWS SSO) for authentication, also managed through Leapp. This provides short-lived, role-based credentials, which is a more secure and flexible approach.

**Consequences:**

*   **Positive:**
    *   **Removes API Limitations:** The temporary credentials from AWS Identity Center do not have the same API limitations as those from `sts:GetSessionToken`.
    *   **Improved Security:** Eliminates the need for long-lived IAM user credentials.
    *   **Centralized Access Management:** Simplifies managing access to multiple AWS accounts.
*   **Negative:**
    *  [Done] Requires initial setup and configuration of AWS Identity Center.
