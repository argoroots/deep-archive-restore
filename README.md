Restore objects from *Glacier Deep Archive* using [AWS CLI](https://aws.amazon.com/cli/).

1. Initiate restore for objects in the *Glacier Deep Archive* storage class.
    ```bash
    ./1-request.sh <BUCKET-NAME>
    ```

2. Wait for the restore to complete (up to 48 hours).

3. Change the storage class to *Glacier Instant Retrieval*. Run it before 30 days after the restore is complete. Otherwise, the objects will be moved back to *Glacier Deep Archive*.
    ```bash
    ./2-copy.sh <BUCKET-NAME>
    ```
