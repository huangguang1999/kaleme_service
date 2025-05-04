namespace go ai.service

struct AIInfoRequest {
    1: string image_url;
}

struct AIInfoResponse {
    1: string resp_body;
}

service AIService {
    AIInfoResponse ProcessAIInfo(1: AIInfoRequest request) (api.post="/ai/info");
}