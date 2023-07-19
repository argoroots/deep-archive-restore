Restore files from *Glacier Deep Archive*.

1. Initiate restore for files in the *Glacier Deep Archive* storage class.
    ```bash
    ./1-request.sh <BUCKET-NAME>
    ```

2. Wait for the restore to complete (up to 48 hours).

3. Change the storage class to *Glacier Instant Retrieval*.
    ```bash
    ./2-copy.sh <BUCKET-NAME>
    ```
