Restore files from *Glacier Deep Archive* to *Glacier Instant Retrieval*.

1. Make restore requests for files in *Glacier Deep Archive* storage class:
    ```bash
    ./1-request.sh <BUCKET-NAME>
    ```

2. Wait for the restore to complete (up to 48 hours).

3. Change the storage class to *Glacier Instant Retrieval*:
    ```bash
    ./2-copy.sh <BUCKET-NAME>
    ```