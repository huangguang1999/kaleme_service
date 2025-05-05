namespace go ai.service

struct AIInfoRequest {
    1: string image_url;
}

struct FoodInfo {
	1: string name;
	2: string description;
	3: string calories;
	4: string fat;
	5: string protein;
	6: string car;
}

struct AIInfoResponse {
    1: i32 code;
	2: FoodInfo data;
	3: string message;
}

service AIService {
    AIInfoResponse ProcessAIInfo(1: AIInfoRequest request) (api.post="/ai/info");
}