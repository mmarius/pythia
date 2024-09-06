from huggingface_hub import hf_hub_download

# specify output directory
cache_dir = "/mnt/research/scratch/users/mmosba/pythia-data"

for i in range(1, 21):
    doc_name = f"document-{i:05}-of-00020.bin"
    print(f"Downloading {doc_name}")
    hf_hub_download(
        repo_id="EleutherAI/pile-deduped-pythia-preshuffled",
        filename=doc_name,
        repo_type="dataset",
        cache_dir=cache_dir,
    )

# also download the document.idx file
doc_name = "document.idx"
print(f"Downloading {doc_name}")
hf_hub_download(
    repo_id="EleutherAI/pile-deduped-pythia-preshuffled",
    filename=doc_name,
    repo_type="dataset",
    cache_dir=cache_dir,
)
