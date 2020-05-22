//
//  main.m
//  NOCList-ObjC
//
//  Created by Nicolas Rios on 5/21/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:NO];
        LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:9 compromised:YES];
        LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:5 compromised:NO];
        LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:10 compromised:YES];
        LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel:4 compromised:NO];
        LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:4 compromised:NO];
        LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel:5 compromised:YES];
        LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:4 compromised:NO];
        LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"ngeborga Dapkūnaitė" accessLevel:5 compromised:YES];
        LSIAgent *agent10 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:6 compromised:YES];
        LSIAgent *agent11 = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:9 compromised:NO];
        NSArray *agents = @[agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11];
        
        
        int compromisedCount = 0;
        for (LSIAgent *agent in agents) {
            if ([agent.compromised isEqualTo:@1]) {
                compromisedCount += 1;
            }
        }
        
        NSLog(@"Total Number of compromised agents: %d", compromisedCount);
        
        int cleanCount = 0;
        for (LSIAgent *agent in agents) {
            if ([agent.compromised isEqualTo:@0]) {
                cleanCount += 1;
                NSLog(@"Agent is clean: %@", agent.coverName);
            }
        }
        
        NSLog(@"Total Number of clean agents: %d", cleanCount);
        
        for (LSIAgent *agent in agents) {
            if ([agent.accessLevel isGreaterThan:@7]) {
                NSString *formatString = [[NSString alloc] initWithFormat:@"%@, level: %@", agent.realName, agent.accessLevel];
                if ([agent.compromised isEqualTo:@1]) {
                    formatString = [formatString stringByAppendingString:@"**WARNING** **COMPROMISED**"];
                    
                }
                
                NSLog(@"%@", formatString);
            }
            
            
        }
        
        int lowCount = 0;
        int midCount = 0;
        int highCount = 0;
        
        for (LSIAgent *agent in agents) {
            if ([agent.accessLevel isLessThan:@5]) {
                lowCount += 1;
            } else if ([agent.accessLevel isGreaterThan:@4] && [agent.accessLevel isLessThan:@8]) {
                midCount += 1;
            } else {
                highCount += 1;
            }
            
        }
        
        NSLog(@"%d low level agents, %d mid level agents, and %d high level agents", lowCount, midCount, highCount);

    }
    return 0;
}
