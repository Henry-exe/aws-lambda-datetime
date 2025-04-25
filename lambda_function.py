from datatime import datatime

def lambda_handler(event, context):
    return {
        'statusCode': 200,
        'body': f'Data e hora atual: {datetime.utcnow()}'
    }